component {
	this.name = "presideDocumentationBuilder-" & Hash( GetCurrentTemplatePath() );

	this.cwd = GetDirectoryFromPath( GetCurrentTemplatePath() );

	this.mappings[ "/api"          ] = this.cwd & "api";
	this.mappings[ "/builders"     ] = this.cwd & "builders";
	this.mappings[ "/docs"         ] = this.cwd & "docs";
	this.mappings[ "/import"       ] = this.cwd & "import";
	this.mappings[ "/builds"       ] = this.cwd & "builds";
	this.mappings[ "/preside"      ] = this.cwd & "preside";
	this.mappings[ "/coldbox"      ] = this.cwd & "preside/system/externals/coldbox";
	this.mappings[ "/cfconcurrent" ] = this.cwd & "preside/system/externals/cfconcurrent";

	this.requesttimeout = CreateTimeSpan( 0, 1, 0, 0 );

	public boolean function onRequest( required string requestedTemplate ) output=true {
		include template=arguments.requestedTemplate;

		return true;
	}
}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchReg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@ACTION_AppSearchReg.query = internal constant [49 x i8] c"SELECT * FROM RegLocator WHERE Signature_ = '%s'\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to query RegLocator for %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32* null, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@HKEY_USERS = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown root key %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RegOpenKeyW returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"RegQueryValueExW returned %d\0A\00", align 1
@REG_EXPAND_SZ = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"unimplemented for type %d (key path %s, value %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, i8**, %struct.TYPE_13__*)* @ACTION_AppSearchReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_AppSearchReg(%struct.TYPE_15__* %0, i8** %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %17, align 8
  store i8* null, i8** %19, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @debugstr_w(i8* %25)
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i8**, i8*** %6, align 8
  store i8* null, i8** %28, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call %struct.TYPE_14__* @MSI_QueryGetRecord(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @ACTION_AppSearchReg.query, i64 0, i64 0), i8* %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %20, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %3
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @debugstr_w(i8* %41)
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %44, i64* %4, align 8
  br label %191

45:                                               ; preds = %3
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %47 = call i32 @MSI_RecordGetInteger(%struct.TYPE_14__* %46, i32 2)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %49 = call i8* @MSI_RecordGetString(%struct.TYPE_14__* %48, i32 3)
  store i8* %49, i8** %8, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %51 = call i8* @MSI_RecordGetString(%struct.TYPE_14__* %50, i32 4)
  store i8* %51, i8** %9, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %53 = call i32 @MSI_RecordGetInteger(%struct.TYPE_14__* %52, i32 5)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @deformat_string(%struct.TYPE_15__* %54, i8* %55, i8** %10)
  %57 = load i32, i32* %13, align 4
  switch i32 %57, label %66 [
    i32 131, label %58
    i32 130, label %60
    i32 129, label %62
    i32 128, label %64
  ]

58:                                               ; preds = %45
  %59 = load i32*, i32** @HKEY_CLASSES_ROOT, align 8
  store i32* %59, i32** %15, align 8
  br label %69

60:                                               ; preds = %45
  %61 = load i32*, i32** @HKEY_CURRENT_USER, align 8
  store i32* %61, i32** %15, align 8
  br label %69

62:                                               ; preds = %45
  %63 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  store i32* %63, i32** %15, align 8
  br label %69

64:                                               ; preds = %45
  %65 = load i32*, i32** @HKEY_USERS, align 8
  store i32* %65, i32** %15, align 8
  br label %69

66:                                               ; preds = %45
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %180

69:                                               ; preds = %64, %62, %60, %58
  %70 = load i32*, i32** %15, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @RegOpenKeyW(i32* %70, i8* %71, i32** %16)
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %21, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* %21, align 8
  %77 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  br label %180

78:                                               ; preds = %69
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @msi_free(i8* %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @deformat_string(%struct.TYPE_15__* %81, i8* %82, i8** %10)
  %84 = load i32*, i32** %16, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i64 @RegQueryValueExW(i32* %84, i8* %85, i32* null, i64* null, i8* null, i64* %17)
  store i64 %86, i64* %21, align 8
  %87 = load i64, i64* %21, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i64, i64* %21, align 8
  %91 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %90)
  br label %180

92:                                               ; preds = %78
  %93 = load i64, i64* %17, align 8
  %94 = call i8* @msi_alloc(i64 %93)
  store i8* %94, i8** %19, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = call i64 @RegQueryValueExW(i32* %95, i8* %96, i32* null, i64* %18, i8* %97, i64* %17)
  store i64 %98, i64* %21, align 8
  %99 = load i64, i64* %21, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i64, i64* %21, align 8
  %103 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %102)
  br label %180

104:                                              ; preds = %92
  %105 = load i64, i64* %17, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %180

108:                                              ; preds = %104
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* @REG_EXPAND_SZ, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load i8*, i8** %19, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = call i64 @ExpandEnvironmentStringsW(i32 %114, i8* null, i64 0)
  store i64 %115, i64* %17, align 8
  %116 = load i64, i64* %17, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load i64, i64* %17, align 8
  %120 = mul i64 %119, 1
  %121 = call i8* @msi_alloc(i64 %120)
  store i8* %121, i8** %22, align 8
  %122 = load i8*, i8** %19, align 8
  %123 = ptrtoint i8* %122 to i32
  %124 = load i8*, i8** %22, align 8
  %125 = load i64, i64* %17, align 8
  %126 = call i64 @ExpandEnvironmentStringsW(i32 %123, i8* %124, i64 %125)
  %127 = load i8*, i8** %19, align 8
  %128 = call i32 @msi_free(i8* %127)
  %129 = load i8*, i8** %22, align 8
  store i8* %129, i8** %19, align 8
  br label %130

130:                                              ; preds = %118, %112
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* @REG_SZ, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %18, align 8
  %137 = load i64, i64* @REG_EXPAND_SZ, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135, %131
  %140 = load i8*, i8** %19, align 8
  %141 = call i8* @strchrW(i8* %140, i8 signext 34)
  store i8* %141, i8** %11, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %11, align 8
  %146 = call i8* @strchrW(i8* %145, i8 signext 34)
  store i8* %146, i8** %12, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i8*, i8** %12, align 8
  store i8 0, i8* %149, align 1
  br label %152

150:                                              ; preds = %143, %139, %135
  %151 = load i8*, i8** %19, align 8
  store i8* %151, i8** %11, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = load i32, i32* %14, align 4
  %154 = and i32 %153, 15
  switch i32 %154, label %172 [
    i32 134, label %155
    i32 133, label %161
    i32 132, label %166
  ]

155:                                              ; preds = %152
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = load i8**, i8*** %6, align 8
  %160 = call i32 @ACTION_SearchDirectory(%struct.TYPE_15__* %156, %struct.TYPE_13__* %157, i8* %158, i32 0, i8** %159)
  br label %179

161:                                              ; preds = %152
  %162 = load i8*, i8** %11, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %164 = call i8* @app_search_file(i8* %162, %struct.TYPE_13__* %163)
  %165 = load i8**, i8*** %6, align 8
  store i8* %164, i8** %165, align 8
  br label %179

166:                                              ; preds = %152
  %167 = load i64, i64* %18, align 8
  %168 = load i8*, i8** %19, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load i8**, i8*** %6, align 8
  %171 = call i32 @ACTION_ConvertRegValue(i64 %167, i8* %168, i64 %169, i8** %170)
  br label %179

172:                                              ; preds = %152
  %173 = load i32, i32* %14, align 4
  %174 = load i8*, i8** %8, align 8
  %175 = call i64 @debugstr_w(i8* %174)
  %176 = load i8*, i8** %9, align 8
  %177 = call i64 @debugstr_w(i8* %176)
  %178 = call i32 @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %173, i64 %175, i64 %177)
  br label %179

179:                                              ; preds = %172, %166, %161, %155
  br label %180

180:                                              ; preds = %179, %107, %101, %89, %75, %66
  %181 = load i8*, i8** %19, align 8
  %182 = call i32 @msi_free(i8* %181)
  %183 = load i32*, i32** %16, align 8
  %184 = call i32 @RegCloseKey(i32* %183)
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 @msi_free(i8* %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = call i32 @msiobj_release(i32* %188)
  %190 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %190, i64* %4, align 8
  br label %191

191:                                              ; preds = %180, %38
  %192 = load i64, i64* %4, align 8
  ret i64 %192
}

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i64 @debugstr_w(i8*) #1

declare dso_local %struct.TYPE_14__* @MSI_QueryGetRecord(i32, i8*, i8*) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @MSI_RecordGetString(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @deformat_string(%struct.TYPE_15__*, i8*, i8**) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i64 @RegOpenKeyW(i32*, i8*, i32**) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i64*, i8*, i64*) #1

declare dso_local i8* @msi_alloc(i64) #1

declare dso_local i64 @ExpandEnvironmentStringsW(i32, i8*, i64) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @ACTION_SearchDirectory(%struct.TYPE_15__*, %struct.TYPE_13__*, i8*, i32, i8**) #1

declare dso_local i8* @app_search_file(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @ACTION_ConvertRegValue(i64, i8*, i64, i8**) #1

declare dso_local i32 @FIXME(i8*, i32, i64, i64) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_script_parse_event.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_script_parse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@script_parse_event.delimiterW = internal constant [2 x i8] c"\22\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not find language\0A\00", align 1
@CLSID_JScript = common dso_local global i32 0, align 4
@SCRIPTMODE_ACTIVESCRIPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Ignoring JScript\0A\00", align 1
@emptyW = common dso_local global i32 0, align 4
@SCRIPTPROC_HOSTMANAGESSOURCE = common dso_local global i32 0, align 4
@SCRIPTPROC_IMPLICIT_THIS = common dso_local global i32 0, align 4
@SCRIPTPROC_IMPLICIT_PARENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"ParseProcedureText failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ret %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @script_parse_event(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @debugstr_w(i8* %13)
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %23, %2
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isalnumW(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  br label %17

26:                                               ; preds = %17
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %73

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = add nsw i64 %36, 1
  %38 = mul i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call i64* @heap_alloc(i32 %39)
  store i64* %40, i64** %11, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %130

44:                                               ; preds = %31
  %45 = load i64*, i64** %11, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = mul i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i64* %45, i8* %46, i32 %53)
  %55 = load i64*, i64** %11, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i64*, i64** %11, align 8
  %63 = call i32 @get_guid_from_language(i64* %62, i32* %7)
  store i32 %63, i32* %12, align 4
  %64 = load i64*, i64** %11, align 8
  %65 = call i32 @heap_free(i64* %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %44
  %69 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %130

70:                                               ; preds = %44
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  br label %77

73:                                               ; preds = %26
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %8, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = call i32 @get_default_script_guid(%struct.TYPE_12__* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = call i64 @IsEqualGUID(i32* @CLSID_JScript, i32* %7)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SCRIPTMODE_ACTIVESCRIPT, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86, %80
  %96 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %130

97:                                               ; preds = %86, %77
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = call %struct.TYPE_11__* @get_script_host(%struct.TYPE_12__* %98, i32* %7)
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %6, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = icmp ne %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102, %97
  store i32* null, i32** %3, align 8
  br label %130

108:                                              ; preds = %102
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* @emptyW, align 4
  %114 = load i32, i32* @SCRIPTPROC_HOSTMANAGESSOURCE, align 4
  %115 = load i32, i32* @SCRIPTPROC_IMPLICIT_THIS, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SCRIPTPROC_IMPLICIT_PARENTS, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @IActiveScriptParseProcedure2_ParseProcedureText(i32 %111, i8* %112, i32* null, i32 %113, i32* null, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @script_parse_event.delimiterW, i64 0, i64 0), i32 0, i32 0, i32 %118, i32** %9)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @FAILED(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %108
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  store i32* null, i32** %3, align 8
  br label %130

126:                                              ; preds = %108
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** %9, align 8
  store i32* %129, i32** %3, align 8
  br label %130

130:                                              ; preds = %126, %123, %107, %95, %68, %43
  %131 = load i32*, i32** %3, align 8
  ret i32* %131
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32* @debugstr_w(i8*) #1

declare dso_local i64 @isalnumW(i8 signext) #1

declare dso_local i64* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @get_guid_from_language(i64*, i32*) #1

declare dso_local i32 @heap_free(i64*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @get_default_script_guid(%struct.TYPE_12__*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @get_script_host(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @IActiveScriptParseProcedure2_ParseProcedureText(i32, i8*, i32*, i32, i32*, i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

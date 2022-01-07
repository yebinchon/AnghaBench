; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_acoustid.c_ParseJson.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_acoustid.c_ParseJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@json_string = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"status node not found or invalid\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Bad request status\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"results\00", align 1
@json_array = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Bad results array or no results\00", align 1
@json_object = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@json_double = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"recordings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_20__*)* @ParseJson to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseJson(i32* %0, i8* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.TYPE_19__* @json_parse_document(i32* %14, i8* %15)
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %8, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = icmp ne %struct.TYPE_19__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %155

20:                                               ; preds = %3
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = call %struct.TYPE_19__* @json_getbyname(%struct.TYPE_19__* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %9, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %24 = icmp ne %struct.TYPE_19__* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @json_string, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %20
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @msg_Warn(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %148

34:                                               ; preds = %25
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @msg_Warn(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %148

45:                                               ; preds = %34
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = call %struct.TYPE_19__* @json_getbyname(%struct.TYPE_19__* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %9, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @json_array, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %45
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @msg_Warn(i32* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %148

59:                                               ; preds = %50
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_21__* @calloc(i32 %64, i32 8)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  store %struct.TYPE_21__* %65, %struct.TYPE_21__** %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = icmp ne %struct.TYPE_21__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %59
  br label %148

73:                                               ; preds = %59
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %142, %73
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %82, %87
  br i1 %88, label %89, label %145

89:                                               ; preds = %81
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %94, i64 %96
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  store %struct.TYPE_19__* %98, %struct.TYPE_19__** %11, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = icmp ne %struct.TYPE_19__* %99, null
  br i1 %100, label %101, label %141

101:                                              ; preds = %89
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @json_object, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %101
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 %112
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %12, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = call %struct.TYPE_19__* @json_getbyname(%struct.TYPE_19__* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %13, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %117 = icmp ne %struct.TYPE_19__* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %107
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @json_double, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %118, %107
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = call i32 @json_dupstring(%struct.TYPE_19__* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %138 = call %struct.TYPE_19__* @json_getbyname(%struct.TYPE_19__* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %140 = call i32 @parse_recordings(i32* %136, %struct.TYPE_19__* %138, %struct.TYPE_21__* %139)
  br label %141

141:                                              ; preds = %131, %101, %89
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %10, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %81

145:                                              ; preds = %81
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = call i32 @json_value_free(%struct.TYPE_19__* %146)
  store i32 1, i32* %4, align 4
  br label %155

148:                                              ; preds = %72, %56, %42, %31
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %150 = icmp ne %struct.TYPE_19__* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %153 = call i32 @json_value_free(%struct.TYPE_19__* %152)
  br label %154

154:                                              ; preds = %151, %148
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %145, %19
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_19__* @json_parse_document(i32*, i8*) #1

declare dso_local %struct.TYPE_19__* @json_getbyname(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_21__* @calloc(i32, i32) #1

declare dso_local i32 @json_dupstring(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @parse_recordings(i32*, %struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @json_value_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

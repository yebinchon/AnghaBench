; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_acoustid.c_parse_recordings.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/webservices/extr_acoustid.c_parse_recordings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__** }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }

@json_array = common dso_local global i64 0, align 8
@json_object = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@json_string = common dso_local global i64 0, align 8
@MB_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"artists\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"recording %d title %s %36s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_20__*, %struct.TYPE_21__*)* @parse_recordings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_recordings(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = icmp ne %struct.TYPE_20__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @json_array, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %135

21:                                               ; preds = %14
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_22__* @calloc(i32 %26, i32 12)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  %35 = icmp ne %struct.TYPE_22__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  br label %135

37:                                               ; preds = %21
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %132, %37
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %47, %52
  br i1 %53, label %54, label %135

54:                                               ; preds = %46
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i64 %60
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %8, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %66, i64 %68
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  store %struct.TYPE_20__* %70, %struct.TYPE_20__** %9, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = icmp ne %struct.TYPE_20__* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %54
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @json_object, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %54
  br label %135

80:                                               ; preds = %73
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = call i32 @json_dupstring(%struct.TYPE_20__* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %86 = call %struct.TYPE_20__* @json_getbyname(%struct.TYPE_20__* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_20__* %86, %struct.TYPE_20__** %10, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %88 = icmp ne %struct.TYPE_20__* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %80
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @json_string, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @strlen(i32 %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i32, i32* @MB_ID_SIZE, align 4
  %104 = call i64 @__MIN(i64 %102, i32 %103)
  store i64 %104, i64* %11, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @memcpy(i32 %107, i32 %112, i64 %113)
  br label %115

115:                                              ; preds = %95, %89, %80
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = call %struct.TYPE_20__* @json_getbyname(%struct.TYPE_20__* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %119 = call i32 @parse_artists(%struct.TYPE_20__* %117, %struct.TYPE_22__* %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @msg_Dbg(i32* %120, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %46

135:                                              ; preds = %20, %36, %79, %46
  ret void
}

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32 @json_dupstring(%struct.TYPE_20__*, i8*) #1

declare dso_local %struct.TYPE_20__* @json_getbyname(%struct.TYPE_20__*, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @__MIN(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @parse_artists(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

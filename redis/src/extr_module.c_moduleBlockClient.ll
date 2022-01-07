; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_moduleBlockClient.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_moduleBlockClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { void (%struct.TYPE_20__*, i8*)*, i64, i32, i32, %struct.TYPE_16__*, i8*, i32*, i8*, i8*, %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__*, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_21__* }

@CLIENT_LUA = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@CLIENT_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Blocking module command called from Lua script\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Blocking module command called from transaction\00", align 1
@BLOCKED_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @moduleBlockClient(%struct.TYPE_20__* %0, i8* %1, i8* %2, void (%struct.TYPE_20__*, i8*)* %3, i64 %4, i32** %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca void (%struct.TYPE_20__*, i8*)*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store void (%struct.TYPE_20__*, i8*)* %3, void (%struct.TYPE_20__*, i8*)** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %17, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CLIENT_LUA, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %18, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CLIENT_MULTI, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %19, align 4
  %35 = call %struct.TYPE_22__* @zmalloc(i32 80)
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %38, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %20, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %8
  %52 = call i64 (...) @mstime()
  %53 = load i64, i64* %13, align 8
  %54 = add nsw i64 %52, %53
  br label %56

55:                                               ; preds = %8
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i64 [ %54, %51 ], [ 0, %55 ]
  store i64 %57, i64* %21, align 8
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %56
  br label %66

64:                                               ; preds = %60
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi %struct.TYPE_21__* [ null, %63 ], [ %65, %64 ]
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 10
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %69, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 9
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %74, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 8
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  %83 = load void (%struct.TYPE_20__*, i8*)*, void (%struct.TYPE_20__*, i8*)** %12, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store void (%struct.TYPE_20__*, i8*)* %83, void (%struct.TYPE_20__*, i8*)** %85, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = call %struct.TYPE_16__* @createClient(i32* null)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 4
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %91, align 8
  %92 = load i32, i32* @CLIENT_MODULE, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32**, i32*** %14, align 8
  %107 = icmp ne i32** %106, null
  %108 = zext i1 %107 to i32
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i64, i64* %21, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %66
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119, %66
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %125, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0)
  %131 = call i32 @addReplyError(%struct.TYPE_21__* %126, i8* %130)
  br label %147

132:                                              ; preds = %119
  %133 = load i32**, i32*** %14, align 8
  %134 = icmp ne i32** %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %137 = load i32, i32* @BLOCKED_MODULE, align 4
  %138 = load i32**, i32*** %14, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load i64, i64* %21, align 8
  %141 = call i32 @blockForKeys(%struct.TYPE_21__* %136, i32 %137, i32** %138, i32 %139, i64 %140, i32* null, i32* null)
  br label %146

142:                                              ; preds = %132
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %144 = load i32, i32* @BLOCKED_MODULE, align 4
  %145 = call i32 @blockClient(%struct.TYPE_21__* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %135
  br label %147

147:                                              ; preds = %146, %122
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  ret %struct.TYPE_22__* %148
}

declare dso_local %struct.TYPE_22__* @zmalloc(i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local %struct.TYPE_16__* @createClient(i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @blockForKeys(%struct.TYPE_21__*, i32, i32**, i32, i64, i32*, i32*) #1

declare dso_local i32 @blockClient(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

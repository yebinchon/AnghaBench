; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_config.c_init_config.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_config.c_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_8__, i64, i32, i32, i32*, i8*, i8*, i8*, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"bottom\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"monospace 10\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dock\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hide\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.swaybar_config* @init_config() #0 {
  %1 = alloca %struct.swaybar_config*, align 8
  %2 = call %struct.swaybar_config* @calloc(i32 1, i32 216)
  store %struct.swaybar_config* %2, %struct.swaybar_config** %1, align 8
  %3 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %4 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %3, i32 0, i32 20
  store i32* null, i32** %4, align 8
  %5 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %6 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = call i32 @parse_position(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %9 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %8, i32 0, i32 19
  store i32 %7, i32* %9, align 8
  %10 = call i8* @strdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %12 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %11, i32 0, i32 18
  store i8* %10, i8** %12, align 8
  %13 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %15 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %14, i32 0, i32 17
  store i8* %13, i8** %15, align 8
  %16 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %17 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %18 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %17, i32 0, i32 16
  store i8* %16, i8** %18, align 8
  %19 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %20 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %19, i32 0, i32 15
  store i32* null, i32** %20, align 8
  %21 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %22 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %24 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %26 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %25, i32 0, i32 3
  store i32 1, i32* %26, align 4
  %27 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %28 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %27, i32 0, i32 4
  store i32 0, i32* %28, align 8
  %29 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %30 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %29, i32 0, i32 5
  store i32 1, i32* %30, align 4
  %31 = call i32 (...) @create_list()
  %32 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %33 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 4
  %34 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %35 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %34, i32 0, i32 13
  %36 = call i32 @wl_list_init(i32* %35)
  %37 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %38 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %37, i32 0, i32 6
  store i32 1, i32* %38, align 8
  %39 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %40 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %39, i32 0, i32 7
  store i32 3, i32* %40, align 4
  %41 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %42 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %41, i32 0, i32 12
  store i64 0, i64* %42, align 8
  %43 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %44 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %47 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %50 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %49, i32 0, i32 11
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %53 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %56 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 255, i32* %57, align 8
  %58 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %59 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i32 255, i32* %60, align 4
  %61 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %62 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 8
  %64 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %65 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %64, i32 0, i32 10
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 3
  store i32 -1, i32* %66, align 4
  %67 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %68 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  store i32 1717987071, i32* %69, align 8
  %70 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %71 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 1282972159, i32* %73, align 4
  %74 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %75 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 676689919, i32* %77, align 4
  %78 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %79 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i32 -1, i32* %81, align 4
  %82 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %83 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 858993663, i32* %85, align 8
  %86 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %87 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 1600613119, i32* %89, align 4
  %90 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %91 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %90, i32 0, i32 10
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 -1, i32* %93, align 8
  %94 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %95 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %94, i32 0, i32 10
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i32 858993663, i32* %97, align 4
  %98 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %99 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  store i32 572662527, i32* %101, align 4
  %102 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %103 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %102, i32 0, i32 10
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  store i32 -2004317953, i32* %105, align 4
  %106 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %107 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %106, i32 0, i32 10
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 791952127, i32* %109, align 8
  %110 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %111 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %110, i32 0, i32 10
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  store i32 -1879047937, i32* %113, align 4
  %114 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %115 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i32 -1, i32* %117, align 8
  %118 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %119 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %118, i32 0, i32 10
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  store i32 791952127, i32* %121, align 4
  %122 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %123 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %122, i32 0, i32 10
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  store i32 -1879047937, i32* %125, align 4
  %126 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  %127 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  store i32 -1, i32* %129, align 4
  %130 = load %struct.swaybar_config*, %struct.swaybar_config** %1, align 8
  ret %struct.swaybar_config* %130
}

declare dso_local %struct.swaybar_config* @calloc(i32, i32) #1

declare dso_local i32 @parse_position(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @wl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

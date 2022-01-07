; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_name_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_name_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, i32, i8*, i8*, i8*, i32, i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@MT_MATCH_CASE = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @zap_name_alloc(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @KM_SLEEP, align 4
  %10 = call %struct.TYPE_10__* @kmem_alloc(i32 72, i32 %9)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %8, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 9
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strlen(i8* %21)
  %23 = getelementptr i8, i8* %22, i64 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MT_MATCH_CASE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %3
  %39 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @zap_normalize(%struct.TYPE_9__* %51, i8* %52, i8* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = call i32 @zap_name_free(%struct.TYPE_10__* %62)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %130

64:                                               ; preds = %50
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strlen(i8* %72)
  %74 = getelementptr i8, i8* %73, i64 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  br label %94

77:                                               ; preds = %45
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = call i32 @zap_name_free(%struct.TYPE_10__* %81)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %130

83:                                               ; preds = %77
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 8
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %83, %64
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = call i32 @zap_hash(%struct.TYPE_10__* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %94
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @zap_normalize(%struct.TYPE_9__* %107, i8* %108, i8* %111, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = call i32 @zap_name_free(%struct.TYPE_10__* %118)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %130

120:                                              ; preds = %106
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strlen(i8* %123)
  %125 = getelementptr i8, i8* %124, i64 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %120, %94
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %4, align 8
  br label %130

130:                                              ; preds = %128, %117, %80, %61
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %131
}

declare dso_local %struct.TYPE_10__* @kmem_alloc(i32, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @zap_normalize(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i32 @zap_name_free(%struct.TYPE_10__*) #1

declare dso_local i32 @zap_hash(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

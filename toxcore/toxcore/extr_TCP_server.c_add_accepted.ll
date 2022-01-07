; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_add_accepted.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_add_accepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i64 }
%struct.TYPE_11__ = type { i32 }

@TCP_STATUS_NO_STATUS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FAIL index is -1\0A\00", align 1
@TCP_STATUS_CONFIRMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @add_accepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_accepted(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_TCP_connection_index(%struct.TYPE_10__* %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @kill_accepted(%struct.TYPE_10__* %16, i32 %17)
  store i32 -1, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 4
  %33 = call i32 @realloc_connection(%struct.TYPE_10__* %28, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %131

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  br label %67

40:                                               ; preds = %19
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %63, %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCP_STATUS_NO_STATUS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %66

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  br label %44

66:                                               ; preds = %59, %44
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %131

73:                                               ; preds = %67
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bs_list_add(i32* %75, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  br label %131

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i64 %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %91 = call i32 @memcpy(%struct.TYPE_12__* %89, %struct.TYPE_11__* %90, i32 4)
  %92 = load i64, i64* @TCP_STATUS_CONFIRMED, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i64 %92, i64* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  store i64 %107, i64* %114, align 8
  %115 = call i32 (...) @unix_time()
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  store i32 %115, i32* %122, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %83, %82, %70, %35
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @get_TCP_connection_index(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @kill_accepted(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @realloc_connection(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @bs_list_add(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @unix_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

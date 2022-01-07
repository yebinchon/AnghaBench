; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_getstrcaps.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lpcap.c_getstrcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32, i32 }

@MAXSTRCAPS = common dso_local global i32 0, align 4
@Csimple = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32)* @getstrcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstrcaps(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  store i32 %8, i32* %7, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 %19, i32* %26, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 1
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %28, align 8
  %31 = ptrtoint %struct.TYPE_15__* %29 to i32
  %32 = call i32 @isfullcap(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %87, label %34

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %81, %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 @isclosecap(%struct.TYPE_15__* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %82

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAXSTRCAPS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = call i32 @nextcap(%struct.TYPE_14__* %47)
  br label %81

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = call i64 @captype(%struct.TYPE_15__* %52)
  %54 = load i64, i64* @Csimple, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @getstrcaps(%struct.TYPE_14__* %57, %struct.TYPE_13__* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %80

61:                                               ; preds = %49
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = call i32 @nextcap(%struct.TYPE_14__* %76)
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %61, %56
  br label %81

81:                                               ; preds = %80, %46
  br label %35

82:                                               ; preds = %35
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 1
  store %struct.TYPE_15__* %86, %struct.TYPE_15__** %84, align 8
  br label %87

87:                                               ; preds = %82, %3
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 -1
  %92 = call i32 @closeaddr(%struct.TYPE_15__* %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @isfullcap(i32) #1

declare dso_local i32 @isclosecap(%struct.TYPE_15__*) #1

declare dso_local i32 @nextcap(%struct.TYPE_14__*) #1

declare dso_local i64 @captype(%struct.TYPE_15__*) #1

declare dso_local i32 @closeaddr(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_dest.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm.c_ra_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"dest           $r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32)* @ra_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_dest(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @ra_hasreg(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ra_free(%struct.TYPE_12__* %15, i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ra_modified(%struct.TYPE_12__* %18, i32 %19)
  br label %54

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ra_hashint(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ra_gethint(i32 %31)
  %33 = call i64 @rset_test(i32 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ra_gethint(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ra_modified(%struct.TYPE_12__* %38, i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_12__*
  %45 = call i32 @RA_DBGX(%struct.TYPE_12__* %44)
  br label %50

46:                                               ; preds = %25, %21
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ra_scratch(%struct.TYPE_12__* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %35
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %14
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ra_hasspill(i32 %57)
  %59 = call i64 @LJ_UNLIKELY(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ra_save(%struct.TYPE_12__* %62, %struct.TYPE_11__* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @ra_hasreg(i32) #1

declare dso_local i32 @ra_free(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ra_modified(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ra_hashint(i32) #1

declare dso_local i64 @rset_test(i32, i32) #1

declare dso_local i32 @ra_gethint(i32) #1

declare dso_local i32 @RA_DBGX(%struct.TYPE_12__*) #1

declare dso_local i32 @ra_scratch(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i32 @ra_hasspill(i32) #1

declare dso_local i32 @ra_save(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_move.c_validate_cursor_col.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_move.c_validate_cursor_col.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }

@curwin = common dso_local global %struct.TYPE_3__* null, align 8
@VALID_WCOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_cursor_col() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @validate_virtcol()
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @VALID_WCOL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %74, label %11

11:                                               ; preds = %0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  %15 = call i32 (...) @curwin_col_off()
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %20 = call i32 @W_WIDTH(%struct.TYPE_3__* %19)
  %21 = load i32, i32* %1, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i32 (...) @curwin_col_off2()
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %11
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %32 = call i32 @W_WIDTH(%struct.TYPE_3__* %31)
  %33 = icmp sge i32 %30, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %40 = call i32 @W_WIDTH(%struct.TYPE_3__* %39)
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* %3, align 4
  %43 = sdiv i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %2, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %34, %29, %11
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @VALID_WCOL, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curwin, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %65, %0
  ret void
}

declare dso_local i32 @validate_virtcol(...) #1

declare dso_local i32 @curwin_col_off(...) #1

declare dso_local i32 @W_WIDTH(%struct.TYPE_3__*) #1

declare dso_local i32 @curwin_col_off2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

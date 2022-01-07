; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_check_invalid_chars_sbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_mbtowc.c_check_invalid_chars_sbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbcs_table = type { i32*, i32*, i8*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MB_USEGLYPHCHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbcs_table*, i32, i8*, i32)* @check_invalid_chars_sbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_invalid_chars_sbcs(%struct.sbcs_table* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sbcs_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.sbcs_table* %0, %struct.sbcs_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MB_USEGLYPHCHARS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.sbcs_table*, %struct.sbcs_table** %5, align 8
  %18 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.sbcs_table*, %struct.sbcs_table** %5, align 8
  %22 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32* [ %19, %16 ], [ %23, %20 ]
  store i32* %25, i32** %9, align 8
  %26 = load %struct.sbcs_table*, %struct.sbcs_table** %5, align 8
  %27 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.sbcs_table*, %struct.sbcs_table** %5, align 8
  %31 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.sbcs_table*, %struct.sbcs_table** %5, align 8
  %34 = getelementptr inbounds %struct.sbcs_table, %struct.sbcs_table* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, 255
  %43 = add nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %32, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %11, align 1
  br label %47

47:                                               ; preds = %76, %24
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %59, %50
  %67 = load i32*, i32** %9, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @is_private_use_area_char(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66, %59
  br label %81

76:                                               ; preds = %66
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, -1
  store i32 %80, i32* %8, align 4
  br label %47

81:                                               ; preds = %75, %47
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i64 @is_private_use_area_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_split_multi_string_values.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_split_multi_string_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32****** (i32*****, i32, i32*)* @split_multi_string_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32****** @split_multi_string_values(i32***** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32******, align 8
  %5 = alloca i32*****, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*****, align 8
  %9 = alloca i32******, align 8
  %10 = alloca i32, align 4
  store i32***** %0, i32****** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*****, i32****** %5, align 8
  store i32***** %11, i32****** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*****, i32****** %5, align 8
  %14 = icmp ne i32***** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32****** null, i32******* %4, align 8
  br label %95

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %27, %16
  %18 = load i32*****, i32****** %8, align 8
  %19 = load i32*****, i32****** %5, align 8
  %20 = ptrtoint i32***** %18 to i64
  %21 = ptrtoint i32***** %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load i32*****, i32****** %8, align 8
  %29 = call i64 @strlenW(i32***** %28)
  %30 = add nsw i64 %29, 1
  %31 = load i32*****, i32****** %8, align 8
  %32 = getelementptr inbounds i32****, i32***** %31, i64 %30
  store i32***** %32, i32****** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32******** @msi_alloc(i32 %41)
  %43 = bitcast i32******** %42 to i32******
  store i32****** %43, i32******* %9, align 8
  %44 = icmp ne i32****** %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32****** null, i32******* %4, align 8
  br label %95

46:                                               ; preds = %36
  %47 = load i32*****, i32****** %5, align 8
  store i32***** %47, i32****** %8, align 8
  br label %48

48:                                               ; preds = %85, %46
  %49 = load i32*****, i32****** %8, align 8
  %50 = load i32*****, i32****** %5, align 8
  %51 = ptrtoint i32***** %49 to i64
  %52 = ptrtoint i32***** %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %48
  %59 = load i32*****, i32****** %8, align 8
  %60 = call i32******* @strdupW(i32***** %59)
  %61 = bitcast i32******* %60 to i32*****
  %62 = load i32******, i32******* %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*****, i32****** %62, i64 %64
  store i32***** %61, i32****** %65, align 8
  %66 = icmp ne i32***** %61, null
  br i1 %66, label %85, label %67

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %79, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load i32******, i32******* %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*****, i32****** %72, i64 %74
  %76 = load i32*****, i32****** %75, align 8
  %77 = bitcast i32***** %76 to i32******
  %78 = call i32 @msi_free(i32****** %77)
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %10, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load i32******, i32******* %9, align 8
  %84 = call i32 @msi_free(i32****** %83)
  store i32****** null, i32******* %4, align 8
  br label %95

85:                                               ; preds = %58
  %86 = load i32*****, i32****** %8, align 8
  %87 = call i64 @strlenW(i32***** %86)
  %88 = add nsw i64 %87, 1
  %89 = load i32*****, i32****** %8, align 8
  %90 = getelementptr inbounds i32****, i32***** %89, i64 %88
  store i32***** %90, i32****** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %48

93:                                               ; preds = %48
  %94 = load i32******, i32******* %9, align 8
  store i32****** %94, i32******* %4, align 8
  br label %95

95:                                               ; preds = %93, %82, %45, %15
  %96 = load i32******, i32******* %4, align 8
  ret i32****** %96
}

declare dso_local i64 @strlenW(i32*****) #1

declare dso_local i32******** @msi_alloc(i32) #1

declare dso_local i32******* @strdupW(i32*****) #1

declare dso_local i32 @msi_free(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

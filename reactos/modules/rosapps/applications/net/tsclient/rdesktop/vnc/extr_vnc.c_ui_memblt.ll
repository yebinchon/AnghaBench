; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_memblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_memblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ui_memblt: op%d %d,%d %dx%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_memblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %18, align 4
  %21 = call i64 @vncwinClipRect(i32* %10, i32* %11, i32* %12, i32* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %98

23:                                               ; preds = %8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %17, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %15, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %18, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ROP2_S(i32 %34)
  switch i32 %35, label %80 [
    i32 129, label %36
    i32 128, label %47
    i32 131, label %58
    i32 130, label %69
  ]

36:                                               ; preds = %23
  %37 = load i32, i32* @server, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i64, i64* %14, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @vncTransBlitFrom(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %43, i32 %44, i32 %45, i32 0)
  br label %97

47:                                               ; preds = %23
  %48 = load i32, i32* @server, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i64, i64* %14, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @vncXorBlitFrom(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* %54, i32 %55, i32 %56)
  br label %97

58:                                               ; preds = %23
  %59 = load i32, i32* @server, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i64, i64* %14, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @vncAndBlitFrom(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32* %65, i32 %66, i32 %67)
  br label %97

69:                                               ; preds = %23
  %70 = load i32, i32* @server, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i64, i64* %14, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @vncCopyBlitFrom(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32* %76, i32 %77, i32 %78)
  br label %97

80:                                               ; preds = %23
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @unimpl(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* @server, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i64, i64* %14, align 8
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @vncCopyBlitFrom(i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %80, %69, %58, %47, %36
  br label %98

98:                                               ; preds = %97, %8
  ret void
}

declare dso_local i64 @vncwinClipRect(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ROP2_S(i32) #1

declare dso_local i32 @vncTransBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vncXorBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @vncAndBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @vncCopyBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

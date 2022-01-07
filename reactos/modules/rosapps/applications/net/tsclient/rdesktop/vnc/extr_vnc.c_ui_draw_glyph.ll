; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_draw_glyph.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_draw_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mix %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_draw_glyph(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32* @vncDupBuffer(i32 %26)
  store i32* %27, i32** %25, align 8
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 65535
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %30, 65535
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %41

34:                                               ; preds = %10
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %20, align 4
  %40 = xor i32 %39, 255
  store i32 %40, i32* %19, align 4
  br label %41

41:                                               ; preds = %38, %34, %10
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %24, align 4
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %22, align 4
  br label %45

45:                                               ; preds = %79, %41
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %21, align 4
  br label %53

53:                                               ; preds = %75, %51
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load i32*, i32** %25, align 8
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32*, i32** %25, align 8
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %22, align 4
  %66 = call i64 @vncGetPixel(i32* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %20, align 4
  br label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %19, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = call i32 @vncSetPixel(i32* %60, i32 %61, i32 %62, i32 %73)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %21, align 4
  br label %53

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %22, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %22, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load i32, i32* %11, align 4
  switch i32 %83, label %133 [
    i32 128, label %84
    i32 129, label %109
  ]

84:                                               ; preds = %82
  %85 = call i32 @vncwinClipRect(i32* %12, i32* %13, i32* %14, i32* %15)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %23, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %24, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* @server, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %25, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @vncTransBlitFrom(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32* %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %87, %84
  br label %136

109:                                              ; preds = %82
  %110 = call i32 @vncwinClipRect(i32* %12, i32* %13, i32* %14, i32* %15)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %23, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %24, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* @server, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32*, i32** %25, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @vncCopyBlitFrom(i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %112, %109
  br label %136

133:                                              ; preds = %82
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @unimpl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %132, %108
  %137 = load i32*, i32** %25, align 8
  %138 = call i32 @vncDeleteBuffer(i32* %137)
  ret void
}

declare dso_local i32* @vncDupBuffer(i32) #1

declare dso_local i32 @vncSetPixel(i32*, i32, i32, i32) #1

declare dso_local i64 @vncGetPixel(i32*, i32, i32) #1

declare dso_local i32 @vncwinClipRect(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vncTransBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vncCopyBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32 @vncDeleteBuffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

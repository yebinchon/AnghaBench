; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_patblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_patblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pattern blit (%d,%d) opcode=%d bg=%d fg=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"brush %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_patblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %155 [
    i32 0, label %26
    i32 3, label %79
  ]

26:                                               ; preds = %8
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %66 [
    i32 128, label %28
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32* @vncNewBuffer(i32 %29, i32 %30, i32 8)
  store i32* %31, i32** %19, align 8
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %51, %28
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %19, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @vncSetPixel(i32* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %17, align 4
  br label %37

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %32

54:                                               ; preds = %32
  %55 = call i32 @vncwinClipRect(i32* %10, i32* %11, i32* %12, i32* %13)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* @server, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %19, align 8
  %64 = call i32 @vncXorBlitFrom(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, i32 0, i32 0)
  br label %65

65:                                               ; preds = %57, %54
  br label %78

66:                                               ; preds = %26
  %67 = call i32 @vncwinClipRect(i32* %10, i32* %11, i32* %12, i32* %13)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* @server, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @vncSetRect(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %66
  br label %78

78:                                               ; preds = %77, %65
  br label %160

79:                                               ; preds = %8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ui_create_glyph(i32 8, i32 8, i32 %82)
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %85

85:                                               ; preds = %112, %79
  %86 = load i32, i32* %21, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  store i32 0, i32* %20, align 4
  br label %89

89:                                               ; preds = %108, %88
  %90 = load i32, i32* %20, align 4
  %91 = icmp slt i32 %90, 8
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load i32*, i32** %22, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %21, align 4
  %96 = load i32*, i32** %22, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @vncGetPixel(i32* %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %16, align 4
  br label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %15, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = call i32 @vncSetPixel(i32* %93, i32 %94, i32 %95, i32 %106)
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %20, align 4
  br label %89

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %21, align 4
  br label %85

115:                                              ; preds = %85
  %116 = call i32 @vncwinClipRect(i32* %10, i32* %11, i32* %12, i32* %13)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  switch i32 %119, label %136 [
    i32 129, label %120
    i32 128, label %128
  ]

120:                                              ; preds = %118
  %121 = load i32, i32* @server, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %22, align 8
  %127 = call i32 @vncCopyBlitFrom(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32* %126, i32 0, i32 0)
  br label %150

128:                                              ; preds = %118
  %129 = load i32, i32* @server, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32*, i32** %22, align 8
  %135 = call i32 @vncXorBlitFrom(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32* %134, i32 0, i32 0)
  br label %150

136:                                              ; preds = %118
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 (i8*, i32, ...) @unimpl(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* @server, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = call i32 @vncCopyBlitFrom(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32* %148, i32 0, i32 0)
  br label %150

150:                                              ; preds = %136, %128, %120
  br label %151

151:                                              ; preds = %150, %115
  %152 = load i32*, i32** %22, align 8
  %153 = ptrtoint i32* %152 to i32
  %154 = call i32 @ui_destroy_glyph(i32 %153)
  br label %160

155:                                              ; preds = %8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, i32, ...) @unimpl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %155, %151, %78
  ret void
}

declare dso_local i32* @vncNewBuffer(i32, i32, i32) #1

declare dso_local i32 @vncSetPixel(i32*, i32, i32, i32) #1

declare dso_local i32 @vncwinClipRect(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @vncXorBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @vncSetRect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ui_create_glyph(i32, i32, i32) #1

declare dso_local i32 @vncGetPixel(i32*, i32, i32) #1

declare dso_local i32 @vncCopyBlitFrom(i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32, ...) #1

declare dso_local i32 @ui_destroy_glyph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

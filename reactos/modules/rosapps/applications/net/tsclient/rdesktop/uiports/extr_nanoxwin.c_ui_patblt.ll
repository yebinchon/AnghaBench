; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_patblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_nanoxwin.c_ui_patblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@g_server_bpp = common dso_local global i32 0, align 4
@g_bpp = common dso_local global i32 0, align 4
@g_ops = common dso_local global i32* null, align 8
@g_gc = common dso_local global i32 0, align 4
@g_wnd = common dso_local global i32 0, align 4
@GR_MODE_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"opcode %d in ui_patblt solid brush\0A\00", align 1
@g_Bpp = common dso_local global i32 0, align 4
@g_gc_clean = common dso_local global i32 0, align 4
@MWPF_TRUECOLOR0888 = common dso_local global i32 0, align 4

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
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* @g_server_bpp, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %36

28:                                               ; preds = %8
  %29 = load i32, i32* @g_bpp, align 4
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @COLOR16TO32(i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @COLOR16TO32(i32 %34)
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %31, %28, %8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %205 [
    i32 0, label %40
    i32 3, label %72
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %68

46:                                               ; preds = %43, %40
  %47 = load i32*, i32** @g_ops, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* @g_gc, align 4
  %53 = load i32, i32* %20, align 4
  %54 = call i32 @GrSetGCMode(i32 %52, i32 %53)
  %55 = load i32, i32* @g_gc, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @GrSetGCForeground(i32 %55, i32 %56)
  %58 = load i32, i32* @g_wnd, align 4
  %59 = load i32, i32* @g_gc, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @GrFillRect(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @g_gc, align 4
  %66 = load i32, i32* @GR_MODE_COPY, align 4
  %67 = call i32 @GrSetGCMode(i32 %65, i32 %66)
  br label %71

68:                                               ; preds = %43
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @unimpl(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %46
  br label %205

72:                                               ; preds = %36
  store i32 0, i32* %21, align 4
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i32, i32* %21, align 4
  %75 = icmp ne i32 %74, 8
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %21, align 4
  %85 = sub nsw i32 7, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %73

91:                                               ; preds = %73
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* @g_Bpp, align 4
  %96 = mul nsw i32 %94, %95
  %97 = call i32* @xmalloc(i32 %96)
  store i32* %97, i32** %18, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* @g_Bpp, align 4
  %102 = mul nsw i32 %100, %101
  %103 = call i32* @xmalloc(i32 %102)
  store i32* %103, i32** %19, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* @g_Bpp, align 4
  %109 = mul nsw i32 %107, %108
  %110 = call i32 @memset(i32* %104, i32 0, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 12
  br i1 %112, label %113, label %121

113:                                              ; preds = %91
  %114 = load i32, i32* @g_wnd, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32*, i32** %18, align 8
  %120 = call i32 @GrReadArea(i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32* %119)
  br label %121

121:                                              ; preds = %113, %91
  store i32 0, i32* %21, align 4
  br label %122

122:                                              ; preds = %176, %121
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %179

126:                                              ; preds = %122
  store i32 0, i32* %22, align 4
  br label %127

127:                                              ; preds = %172, %126
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %175

131:                                              ; preds = %127
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = srem i32 %139, 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %141, %142
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %143, %146
  %148 = srem i32 %147, 8
  %149 = call i32 @is_pixel_on(i32* %132, i32 %140, i32 %148, i32 8, i32 1)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %131
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %23, align 4
  br label %155

153:                                              ; preds = %131
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %23, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = load i32*, i32** %18, align 8
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @get_pixel32(i32* %156, i32 %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %24, align 4
  %162 = load i32*, i32** %19, align 8
  %163 = load i32, i32* %22, align 4
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = call i32 @rop(i32 %167, i32 %168, i32 %169)
  %171 = call i32 @set_pixel32(i32* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %155
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %22, align 4
  br label %127

175:                                              ; preds = %127
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %21, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %21, align 4
  br label %122

179:                                              ; preds = %122
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @GrNewPixmap(i32 %180, i32 %181, i32 0)
  store i32 %182, i32* %25, align 4
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* @g_gc_clean, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32*, i32** %19, align 8
  %188 = load i32, i32* @MWPF_TRUECOLOR0888, align 4
  %189 = call i32 @GrArea(i32 %183, i32 %184, i32 0, i32 0, i32 %185, i32 %186, i32* %187, i32 %188)
  %190 = load i32, i32* @g_wnd, align 4
  %191 = load i32, i32* @g_gc, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* @GR_MODE_COPY, align 4
  %198 = call i32 @GrCopyArea(i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 0, i32 0, i32 %197)
  %199 = load i32, i32* %25, align 4
  %200 = call i32 @GrDestroyWindow(i32 %199)
  %201 = load i32*, i32** %18, align 8
  %202 = call i32 @xfree(i32* %201)
  %203 = load i32*, i32** %19, align 8
  %204 = call i32 @xfree(i32* %203)
  br label %205

205:                                              ; preds = %36, %179, %71
  ret void
}

declare dso_local i32 @COLOR16TO32(i32) #1

declare dso_local i32 @GrSetGCMode(i32, i32) #1

declare dso_local i32 @GrSetGCForeground(i32, i32) #1

declare dso_local i32 @GrFillRect(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @GrReadArea(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @is_pixel_on(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @get_pixel32(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_pixel32(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rop(i32, i32, i32) #1

declare dso_local i32 @GrNewPixmap(i32, i32, i32) #1

declare dso_local i32 @GrArea(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @GrCopyArea(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GrDestroyWindow(i32) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

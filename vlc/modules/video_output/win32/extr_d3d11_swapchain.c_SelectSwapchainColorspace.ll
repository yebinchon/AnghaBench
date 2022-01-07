; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_SelectSwapchainColorspace.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_d3d11_swapchain.c_SelectSwapchainColorspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, i64, i64, i64, i64 }
%struct.d3d11_local_swapchain = type { i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@IID_IDXGISwapChain3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not get a IDXGISwapChain3\00", align 1
@color_spaces = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"supports colorspace %s\00", align 1
@TRANSFER_FUNC_SMPTE_ST2084 = common dso_local global i64 0, align 8
@TRANSFER_FUNC_HLG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"no matching colorspace found force %s\00", align 1
@IID_IDXGISwapChain4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"using colorspace %s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to set colorspace %s. (hr=0x%lX)\00", align 1
@IID_IDXGIOutput6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3d11_local_swapchain*, %struct.TYPE_9__*)* @SelectSwapchainColorspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SelectSwapchainColorspace(%struct.d3d11_local_swapchain* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.d3d11_local_swapchain*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.d3d11_local_swapchain* %0, %struct.d3d11_local_swapchain** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %12 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %13 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = bitcast i32** %10 to i8**
  %16 = call i32 @IDXGISwapChain_QueryInterface(i32 %14, i32* @IID_IDXGISwapChain3, i8** %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %22 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @msg_Warn(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %213

25:                                               ; preds = %2
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %151, %25
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %154

34:                                               ; preds = %26
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @IDXGISwapChain3_CheckColorSpaceSupport(i32* %35, i64 %41, i32* %9)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @SUCCEEDED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %150

46:                                               ; preds = %34
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %150

49:                                               ; preds = %46
  %50 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %51 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %56 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, i8*, ...) @msg_Dbg(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %54, %49
  store i32 0, i32* %7, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %65
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %79
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %119, label %104

104:                                              ; preds = %93
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TRANSFER_FUNC_SMPTE_ST2084, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TRANSFER_FUNC_HLG, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113, %93
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %119, %113, %104
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %122
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %133, %122
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %149

146:                                              ; preds = %143, %136
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %143, %140
  br label %150

150:                                              ; preds = %149, %46, %34
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %26

154:                                              ; preds = %26
  %155 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %156 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  %160 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %161 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i32, i8*, ...) @msg_Warn(i32 %162, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %159, %154
  %171 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %172 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %175 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %174, i32 0, i32 4
  %176 = bitcast i32* %175 to i8**
  %177 = call i32 @IDXGISwapChain_QueryInterface(i32 %173, i32* @IID_IDXGISwapChain4, i8** %176)
  %178 = load i32*, i32** %10, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @IDXGISwapChain3_SetColorSpace1(i32* %178, i64 %184)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i64 @SUCCEEDED(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %170
  %190 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %191 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i32, i8*, i8*, ...) @msg_Dbg(i32 %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %198)
  br label %212

200:                                              ; preds = %170
  %201 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %202 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @msg_Err(i32 %203, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %209, i32 %210)
  br label %212

212:                                              ; preds = %200, %189
  br label %213

213:                                              ; preds = %212, %20
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @color_spaces, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i64 %216
  %218 = load %struct.d3d11_local_swapchain*, %struct.d3d11_local_swapchain** %3, align 8
  %219 = getelementptr inbounds %struct.d3d11_local_swapchain, %struct.d3d11_local_swapchain* %218, i32 0, i32 1
  store %struct.TYPE_10__* %217, %struct.TYPE_10__** %219, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %213
  %223 = load i32*, i32** %10, align 8
  %224 = call i32 @IDXGISwapChain3_Release(i32* %223)
  br label %225

225:                                              ; preds = %222, %213
  ret void
}

declare dso_local i32 @IDXGISwapChain_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Warn(i32, i8*, ...) #1

declare dso_local i32 @IDXGISwapChain3_CheckColorSpaceSupport(i32*, i64, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @msg_Dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @IDXGISwapChain3_SetColorSpace1(i32*, i64) #1

declare dso_local i32 @msg_Err(i32, i8*, i8*, i32) #1

declare dso_local i32 @IDXGISwapChain3_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

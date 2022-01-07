; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_accel_screen_copy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_accel_screen_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdata = common dso_local global i64 0, align 8
@g_width = common dso_local global i32 0, align 4
@g_server_bpp = common dso_local global i32 0, align 4
@g_server_Bpp = common dso_local global i32 0, align 4
@has_screen_copy = common dso_local global i64 0, align 8
@ACCEL_SCREENCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @accel_screen_copy(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* @sdata, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %161

19:                                               ; preds = %6
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i64, i64* @sdata, align 8
  %30 = load i32, i32* @g_width, align 4
  %31 = load i32, i32* @g_server_bpp, align 4
  %32 = call i32* @get_ptr(i32 %24, i32 %28, i64 %29, i32 %30, i32 %31)
  store i32* %32, i32** %14, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = load i64, i64* @sdata, align 8
  %39 = load i32, i32* @g_width, align 4
  %40 = load i32, i32* @g_server_bpp, align 4
  %41 = call i32* @get_ptr(i32 %33, i32 %37, i64 %38, i32 %39, i32 %40)
  store i32* %41, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %67, %23
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @g_server_Bpp, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call i32 @copy_mem(i32* %47, i32* %48, i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* @g_width, align 4
  %55 = load i32, i32* @g_server_Bpp, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32, i32* @g_width, align 4
  %62 = load i32, i32* @g_server_Bpp, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32* %66, i32** %15, align 8
  br label %67

67:                                               ; preds = %46
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %16, align 4
  br label %42

70:                                               ; preds = %42
  br label %160

71:                                               ; preds = %19
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %119

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i64, i64* @sdata, align 8
  %83 = load i32, i32* @g_width, align 4
  %84 = load i32, i32* @g_server_bpp, align 4
  %85 = call i32* @get_ptr(i32 %80, i32 %81, i64 %82, i32 %83, i32 %84)
  store i32* %85, i32** %14, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i64, i64* @sdata, align 8
  %89 = load i32, i32* @g_width, align 4
  %90 = load i32, i32* @g_server_bpp, align 4
  %91 = call i32* @get_ptr(i32 %86, i32 %87, i64 %88, i32 %89, i32 %90)
  store i32* %91, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %115, %79
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %92
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @g_server_Bpp, align 4
  %101 = mul nsw i32 %99, %100
  %102 = call i32 @copy_mem(i32* %97, i32* %98, i32 %101)
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* @g_width, align 4
  %105 = load i32, i32* @g_server_Bpp, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32* %108, i32** %14, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* @g_width, align 4
  %111 = load i32, i32* @g_server_Bpp, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32* %114, i32** %15, align 8
  br label %115

115:                                              ; preds = %96
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %92

118:                                              ; preds = %92
  br label %159

119:                                              ; preds = %75
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i64, i64* @sdata, align 8
  %123 = load i32, i32* @g_width, align 4
  %124 = load i32, i32* @g_server_bpp, align 4
  %125 = call i32* @get_ptr(i32 %120, i32 %121, i64 %122, i32 %123, i32 %124)
  store i32* %125, i32** %14, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i64, i64* @sdata, align 8
  %129 = load i32, i32* @g_width, align 4
  %130 = load i32, i32* @g_server_bpp, align 4
  %131 = call i32* @get_ptr(i32 %126, i32 %127, i64 %128, i32 %129, i32 %130)
  store i32* %131, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %132

132:                                              ; preds = %155, %119
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @g_server_Bpp, align 4
  %141 = mul nsw i32 %139, %140
  %142 = call i32 @copy_memb(i32* %137, i32* %138, i32 %141)
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* @g_width, align 4
  %145 = load i32, i32* @g_server_Bpp, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32* %148, i32** %14, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* @g_width, align 4
  %151 = load i32, i32* @g_server_Bpp, align 4
  %152 = mul nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  store i32* %154, i32** %15, align 8
  br label %155

155:                                              ; preds = %136
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %132

158:                                              ; preds = %132
  br label %159

159:                                              ; preds = %158, %118
  br label %160

160:                                              ; preds = %159, %70
  br label %230

161:                                              ; preds = %6
  %162 = load i64, i64* @has_screen_copy, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* @ACCEL_SCREENCOPY, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @vga_accel(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  br label %229

173:                                              ; preds = %161
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %10, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* @g_server_Bpp, align 4
  %178 = mul nsw i32 %176, %177
  %179 = call i64 @xmalloc(i32 %178)
  %180 = inttoptr i64 %179 to i32*
  store i32* %180, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %181

181:                                              ; preds = %200, %173
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %181
  %186 = load i32, i32* %16, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = ptrtoint i32* %187 to i64
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @g_server_bpp, align 4
  %191 = call i32* @get_ptr(i32 0, i32 %186, i64 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @g_server_Bpp, align 4
  %198 = mul nsw i32 %196, %197
  %199 = call i32 @vga_getscansegment(i32* %191, i32 %192, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %185
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %16, align 4
  br label %181

203:                                              ; preds = %181
  store i32 0, i32* %16, align 4
  br label %204

204:                                              ; preds = %223, %203
  %205 = load i32, i32* %16, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %204
  %209 = load i32, i32* %16, align 4
  %210 = load i32*, i32** %13, align 8
  %211 = ptrtoint i32* %210 to i64
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* @g_server_bpp, align 4
  %214 = call i32* @get_ptr(i32 0, i32 %209, i64 %211, i32 %212, i32 %213)
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @g_server_Bpp, align 4
  %221 = mul nsw i32 %219, %220
  %222 = call i32 @vga_drawscansegment(i32* %214, i32 %215, i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %208
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %204

226:                                              ; preds = %204
  %227 = load i32*, i32** %13, align 8
  %228 = call i32 @xfree(i32* %227)
  br label %229

229:                                              ; preds = %226, %164
  br label %230

230:                                              ; preds = %229, %160
  ret void
}

declare dso_local i32* @get_ptr(i32, i32, i64, i32, i32) #1

declare dso_local i32 @copy_mem(i32*, i32*, i32) #1

declare dso_local i32 @copy_memb(i32*, i32*, i32) #1

declare dso_local i32 @vga_accel(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @vga_getscansegment(i32*, i32, i32, i32) #1

declare dso_local i32 @vga_drawscansegment(i32*, i32, i32, i32) #1

declare dso_local i32 @xfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

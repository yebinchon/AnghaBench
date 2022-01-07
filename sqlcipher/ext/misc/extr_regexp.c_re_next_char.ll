; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_re_next_char.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_regexp.c_re_next_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @re_next_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_next_char(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp uge i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %246

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  %21 = getelementptr inbounds i32, i32* %16, i64 %19
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp uge i32 %23, 128
  br i1 %24, label %25, label %244

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 224
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 192
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %48, label %67

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 31
  %51 = shl i32 %50, 6
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds i32, i32* %54, i64 %57
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 63
  %62 = or i32 %51, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ult i32 %63, 128
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  store i32 65533, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %48
  br label %243

67:                                               ; preds = %37, %29, %25
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 240
  %70 = icmp eq i32 %69, 224
  br i1 %70, label %71, label %143

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %143

80:                                               ; preds = %71
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 192
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %143

91:                                               ; preds = %80
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 192
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %143

103:                                              ; preds = %91
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, 15
  %106 = shl i32 %105, 12
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 63
  %116 = shl i32 %115, 6
  %117 = or i32 %106, %116
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 63
  %128 = or i32 %117, %127
  store i32 %128, i32* %4, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 2
  store i64 %132, i64* %130, align 8
  %133 = load i32, i32* %4, align 4
  %134 = icmp ule i32 %133, 1023
  br i1 %134, label %141, label %135

135:                                              ; preds = %103
  %136 = load i32, i32* %4, align 4
  %137 = icmp uge i32 %136, 55296
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = icmp ule i32 %139, 57343
  br i1 %140, label %141, label %142

141:                                              ; preds = %138, %103
  store i32 65533, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %138, %135
  br label %242

143:                                              ; preds = %91, %80, %71, %67
  %144 = load i32, i32* %4, align 4
  %145 = and i32 %144, 248
  %146 = icmp eq i32 %145, 240
  br i1 %146, label %147, label %240

147:                                              ; preds = %143
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %151, %154
  br i1 %155, label %156, label %240

156:                                              ; preds = %147
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 192
  %166 = icmp eq i32 %165, 128
  br i1 %166, label %167, label %240

167:                                              ; preds = %156
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 192
  %178 = icmp eq i32 %177, 128
  br i1 %178, label %179, label %240

179:                                              ; preds = %167
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 2
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 192
  %190 = icmp eq i32 %189, 128
  br i1 %190, label %191, label %240

191:                                              ; preds = %179
  %192 = load i32, i32* %4, align 4
  %193 = and i32 %192, 7
  %194 = shl i32 %193, 18
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 63
  %204 = shl i32 %203, 12
  %205 = or i32 %194, %204
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, 1
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %214, 63
  %216 = shl i32 %215, 6
  %217 = or i32 %205, %216
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, 2
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, 63
  %228 = or i32 %217, %227
  store i32 %228, i32* %4, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, 3
  store i64 %232, i64* %230, align 8
  %233 = load i32, i32* %4, align 4
  %234 = icmp ule i32 %233, 65535
  br i1 %234, label %238, label %235

235:                                              ; preds = %191
  %236 = load i32, i32* %4, align 4
  %237 = icmp ugt i32 %236, 1114111
  br i1 %237, label %238, label %239

238:                                              ; preds = %235, %191
  store i32 65533, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %235
  br label %241

240:                                              ; preds = %179, %167, %156, %147, %143
  store i32 65533, i32* %4, align 4
  br label %241

241:                                              ; preds = %240, %239
  br label %242

242:                                              ; preds = %241, %142
  br label %243

243:                                              ; preds = %242, %66
  br label %244

244:                                              ; preds = %243, %13
  %245 = load i32, i32* %4, align 4
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %244, %12
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

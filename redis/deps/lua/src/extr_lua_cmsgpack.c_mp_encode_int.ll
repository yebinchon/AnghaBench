; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_int.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_encode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_encode_int(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %116

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 127
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 127
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 %17, i8* %18, align 1
  store i32 1, i32* %8, align 4
  br label %115

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 255
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -52, i8* %23, align 1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %26, i8* %27, align 1
  store i32 2, i32* %8, align 4
  br label %114

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 65535
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -51, i8* %32, align 1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 65280
  %35 = ashr i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %40, i8* %41, align 1
  store i32 3, i32* %8, align 4
  br label %113

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp sle i64 %44, 4294967295
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -50, i8* %47, align 1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, -16777216
  %50 = lshr i32 %49, 24
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 16711680
  %55 = ashr i32 %54, 16
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %56, i8* %57, align 1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  store i8 %61, i8* %62, align 1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 255
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  store i8 %65, i8* %66, align 1
  store i32 5, i32* %8, align 4
  br label %112

67:                                               ; preds = %42
  %68 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -49, i8* %68, align 1
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = and i64 %70, -72057594037927936
  %72 = lshr i64 %71, 56
  %73 = trunc i64 %72 to i8
  %74 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %73, i8* %74, align 1
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, 71776119061217280
  %78 = ashr i64 %77, 48
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %79, i8* %80, align 1
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = and i64 %82, 280375465082880
  %84 = ashr i64 %83, 40
  %85 = trunc i64 %84 to i8
  %86 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  store i8 %85, i8* %86, align 1
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = and i64 %88, 1095216660480
  %90 = ashr i64 %89, 32
  %91 = trunc i64 %90 to i8
  %92 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  store i8 %91, i8* %92, align 1
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, -16777216
  %95 = lshr i32 %94, 24
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5
  store i8 %96, i8* %97, align 1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 16711680
  %100 = ashr i32 %99, 16
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6
  store i8 %101, i8* %102, align 1
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, 65280
  %105 = ashr i32 %104, 8
  %106 = trunc i32 %105 to i8
  %107 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  store i8 %106, i8* %107, align 1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 %110, i8* %111, align 1
  store i32 9, i32* %8, align 4
  br label %112

112:                                              ; preds = %67, %46
  br label %113

113:                                              ; preds = %112, %31
  br label %114

114:                                              ; preds = %113, %22
  br label %115

115:                                              ; preds = %114, %14
  br label %220

116:                                              ; preds = %3
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %117, -32
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 %121, i8* %122, align 1
  store i32 1, i32* %8, align 4
  br label %219

123:                                              ; preds = %116
  %124 = load i32, i32* %6, align 4
  %125 = icmp sge i32 %124, -128
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -48, i8* %127, align 1
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, 255
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %130, i8* %131, align 1
  store i32 2, i32* %8, align 4
  br label %218

132:                                              ; preds = %123
  %133 = load i32, i32* %6, align 4
  %134 = icmp sge i32 %133, -32768
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -47, i8* %136, align 1
  %137 = load i32, i32* %6, align 4
  %138 = and i32 %137, 65280
  %139 = ashr i32 %138, 8
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %140, i8* %141, align 1
  %142 = load i32, i32* %6, align 4
  %143 = and i32 %142, 255
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %144, i8* %145, align 1
  store i32 3, i32* %8, align 4
  br label %217

146:                                              ; preds = %132
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp sge i64 %148, -2147483648
  br i1 %149, label %150, label %171

150:                                              ; preds = %146
  %151 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -46, i8* %151, align 1
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, -16777216
  %154 = lshr i32 %153, 24
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %155, i8* %156, align 1
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 16711680
  %159 = ashr i32 %158, 16
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %160, i8* %161, align 1
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, 65280
  %164 = ashr i32 %163, 8
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  store i8 %165, i8* %166, align 1
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, 255
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  store i8 %169, i8* %170, align 1
  store i32 5, i32* %8, align 4
  br label %216

171:                                              ; preds = %146
  %172 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  store i8 -45, i8* %172, align 1
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = and i64 %174, -72057594037927936
  %176 = lshr i64 %175, 56
  %177 = trunc i64 %176 to i8
  %178 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 1
  store i8 %177, i8* %178, align 1
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = and i64 %180, 71776119061217280
  %182 = ashr i64 %181, 48
  %183 = trunc i64 %182 to i8
  %184 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 2
  store i8 %183, i8* %184, align 1
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = and i64 %186, 280375465082880
  %188 = ashr i64 %187, 40
  %189 = trunc i64 %188 to i8
  %190 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 3
  store i8 %189, i8* %190, align 1
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = and i64 %192, 1095216660480
  %194 = ashr i64 %193, 32
  %195 = trunc i64 %194 to i8
  %196 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 4
  store i8 %195, i8* %196, align 1
  %197 = load i32, i32* %6, align 4
  %198 = and i32 %197, -16777216
  %199 = lshr i32 %198, 24
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 5
  store i8 %200, i8* %201, align 1
  %202 = load i32, i32* %6, align 4
  %203 = and i32 %202, 16711680
  %204 = ashr i32 %203, 16
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 6
  store i8 %205, i8* %206, align 1
  %207 = load i32, i32* %6, align 4
  %208 = and i32 %207, 65280
  %209 = ashr i32 %208, 8
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 7
  store i8 %210, i8* %211, align 1
  %212 = load i32, i32* %6, align 4
  %213 = and i32 %212, 255
  %214 = trunc i32 %213 to i8
  %215 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 8
  store i8 %214, i8* %215, align 1
  store i32 9, i32* %8, align 4
  br label %216

216:                                              ; preds = %171, %150
  br label %217

217:                                              ; preds = %216, %135
  br label %218

218:                                              ; preds = %217, %126
  br label %219

219:                                              ; preds = %218, %119
  br label %220

220:                                              ; preds = %219, %115
  %221 = load i32*, i32** %4, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @mp_buf_append(i32* %221, i32* %222, i8* %223, i32 %224)
  ret void
}

declare dso_local i32 @mp_buf_append(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

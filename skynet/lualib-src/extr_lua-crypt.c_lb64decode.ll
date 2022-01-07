; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lb64decode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lb64decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMALL_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid base64 text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lb64decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb64decode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @luaL_checklstring(i32* %17, i32 1, i64* %4)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %20, 3
  %22 = udiv i64 %21, 4
  %23 = mul i64 %22, 3
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @SMALL_CHUNK, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %7, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SMALL_CHUNK, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @lua_newuserdata(i32* %33, i32 %34)
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %32, %1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %205, %36
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %206

42:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %81, %69, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %86

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %4, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @luaL_error(i32* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

54:                                               ; preds = %46
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @b64index(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %43

72:                                               ; preds = %54
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, -2
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %43

86:                                               ; preds = %43
  %87 = load i32, i32* %13, align 4
  switch i32 %87, label %202 [
    i32 0, label %88
    i32 1, label %129
    i32 2, label %170
  ]

88:                                               ; preds = %86
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = shl i32 %90, 18
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 12
  %95 = or i32 %91, %94
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 6
  %99 = or i32 %95, %98
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %99, %101
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = ashr i32 %103, 16
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 %105, i8* %109, align 1
  %110 = load i32, i32* %16, align 4
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 %113, i8* %118, align 1
  %119 = load i32, i32* %16, align 4
  %120 = and i32 %119, 255
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  store i8 %121, i8* %126, align 1
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 3
  store i32 %128, i32* %12, align 4
  br label %205

129:                                              ; preds = %86
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, -2
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, 3
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133, %129
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @luaL_error(i32* %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %140, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

141:                                              ; preds = %133
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = shl i32 %143, 10
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 4
  %148 = or i32 %144, %147
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %150 = load i32, i32* %149, align 8
  %151 = ashr i32 %150, 2
  %152 = or i32 %148, %151
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %16, align 4
  %154 = ashr i32 %153, 8
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 %155, i8* %159, align 1
  %160 = load i32, i32* %16, align 4
  %161 = and i32 %160, 255
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  store i8 %162, i8* %167, align 1
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %12, align 4
  br label %205

170:                                              ; preds = %86
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, -2
  br i1 %173, label %183, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, -2
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 15
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178, %174, %170
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @luaL_error(i32* %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %185, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

186:                                              ; preds = %178
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %188 = load i32, i32* %187, align 16
  %189 = shl i32 %188, 2
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = ashr i32 %191, 4
  %193 = or i32 %189, %192
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %9, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  store i8 %195, i8* %199, align 1
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  br label %205

202:                                              ; preds = %86
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @luaL_error(i32* %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %204, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

205:                                              ; preds = %186, %141, %88
  br label %37

206:                                              ; preds = %37
  %207 = load i32*, i32** %3, align 8
  %208 = load i8*, i8** %9, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @lua_pushlstring(i32* %207, i8* %208, i32 %209)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %211

211:                                              ; preds = %206, %202, %183, %138, %51
  %212 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @b64index(i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lb64encode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_lb64encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lb64encode.encoding = internal global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@SMALL_CHUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lb64encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb64encode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @luaL_checklstring(i32* %14, i32 1, i64* %3)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 2
  %19 = udiv i64 %18, 3
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @SMALL_CHUNK, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %6, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SMALL_CHUNK, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @lua_newuserdata(i32* %30, i32 %31)
  store i8* %32, i8** %8, align 8
  br label %33

33:                                               ; preds = %29, %1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %109, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i64, i64* %3, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 %37, 2
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %112

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 16
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %46, %53
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %54, %60
  store i32 %61, i32* %11, align 4
  %62 = load i8*, i8** @lb64encode.encoding, align 8
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 18
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i8*, i8** @lb64encode.encoding, align 8
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 12
  %75 = and i32 %74, 63
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 %78, i8* %83, align 1
  %84 = load i8*, i8** @lb64encode.encoding, align 8
  %85 = load i32, i32* %11, align 4
  %86 = ashr i32 %85, 6
  %87 = and i32 %86, 63
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %84, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8 %90, i8* %95, align 1
  %96 = load i8*, i8** @lb64encode.encoding, align 8
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 63
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %101, i8* %106, align 1
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %40
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 3
  store i32 %111, i32* %9, align 4
  br label %34

112:                                              ; preds = %34
  %113 = load i64, i64* %3, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 %113, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  switch i32 %118, label %210 [
    i32 1, label %119
    i32 2, label %157
  ]

119:                                              ; preds = %112
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %13, align 4
  %125 = load i8*, i8** @lb64encode.encoding, align 8
  %126 = load i32, i32* %13, align 4
  %127 = ashr i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = load i8*, i8** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 %130, i8* %134, align 1
  %135 = load i8*, i8** @lb64encode.encoding, align 8
  %136 = load i32, i32* %13, align 4
  %137 = and i32 %136, 3
  %138 = shl i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %141, i8* %146, align 1
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8 61, i8* %151, align 1
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 3
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 61, i8* %156, align 1
  br label %210

157:                                              ; preds = %112
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 8
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %163, %169
  store i32 %170, i32* %13, align 4
  %171 = load i8*, i8** @lb64encode.encoding, align 8
  %172 = load i32, i32* %13, align 4
  %173 = ashr i32 %172, 10
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 %176, i8* %180, align 1
  %181 = load i8*, i8** @lb64encode.encoding, align 8
  %182 = load i32, i32* %13, align 4
  %183 = ashr i32 %182, 4
  %184 = and i32 %183, 63
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %181, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 %187, i8* %192, align 1
  %193 = load i8*, i8** @lb64encode.encoding, align 8
  %194 = load i32, i32* %13, align 4
  %195 = and i32 %194, 15
  %196 = shl i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %8, align 8
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 2
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 %199, i8* %204, align 1
  %205 = load i8*, i8** %8, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %205, i64 %208
  store i8 61, i8* %209, align 1
  br label %210

210:                                              ; preds = %112, %157, %119
  %211 = load i32*, i32** %2, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @lua_pushlstring(i32* %211, i8* %212, i32 %213)
  %215 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %215)
  ret i32 1
}

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @lua_newuserdata(i32*, i32) #1

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

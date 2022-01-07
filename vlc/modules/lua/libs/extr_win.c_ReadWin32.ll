; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_win.c_ReadWin32.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_win.c_ReadWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8, i32 }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@KEY_EVENT = common dso_local global i64 0, align 8
@VK_SHIFT = common dso_local global i64 0, align 8
@VK_CONTROL = common dso_local global i64 0, align 8
@VK_MENU = common dso_local global i64 0, align 8
@VK_CAPITAL = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @ReadWin32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadWin32(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %14

14:                                               ; preds = %215, %65, %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %18 = sub nsw i32 %17, 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ReadConsoleInput(i32* %21, %struct.TYPE_9__* %8, i32 1, i32* %9)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i1 [ false, %14 ], [ %23, %20 ]
  br i1 %25, label %26, label %216

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KEY_EVENT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VK_SHIFT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %65, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VK_CONTROL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VK_MENU, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VK_CAPITAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %51, %44, %37, %31, %26
  br label %14

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 13
  br i1 %81, label %82, label %93

82:                                               ; preds = %74, %66
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @putc(i8 signext 10, i32 %83)
  %85 = load i8*, i8** %6, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 10, i8* %89, align 1
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %216

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 8
  %99 = sext i8 %98 to i32
  switch i32 %99, label %174 [
    i32 8, label %100
  ]

100:                                              ; preds = %93
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %215

105:                                              ; preds = %100
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %162

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 192
  %119 = icmp eq i32 %118, 128
  br i1 %119, label %120, label %162

120:                                              ; preds = %109
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 2
  store i32 %123, i32* %121, align 4
  store i32 1, i32* %10, align 4
  br label %124

124:                                              ; preds = %140, %120
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load i8*, i8** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 192
  %137 = icmp eq i32 %136, 128
  br label %138

138:                                              ; preds = %128, %124
  %139 = phi i1 [ false, %124 ], [ %137, %128 ]
  br i1 %139, label %140, label %146

140:                                              ; preds = %138
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %124

146:                                              ; preds = %138
  %147 = load i8*, i8** %6, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = xor i32 %153, -1
  %155 = trunc i32 %154 to i8
  %156 = call i32 @clz(i8 zeroext %155)
  %157 = load i32, i32* %10, align 4
  %158 = add i32 %157, 1
  %159 = icmp eq i32 %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  br label %166

162:                                              ; preds = %109, %105
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %162, %146
  %167 = load i8*, i8** %6, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 0, i8* %171, align 1
  %172 = load i32, i32* @stdout, align 4
  %173 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %172)
  br label %215

174:                                              ; preds = %93
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %175, align 4
  %181 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %183 = call i8* @FromWide(i32* %182)
  store i8* %183, i8** %12, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = call i32 @strlen(i8* %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %174
  %193 = load i8*, i8** %6, align 8
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 0, i8* %197, align 1
  store i32 0, i32* %4, align 4
  br label %222

198:                                              ; preds = %174
  %199 = load i8*, i8** %6, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8*, i8** %12, align 8
  %205 = call i32 @strcpy(i8* %203, i8* %204)
  %206 = load i32, i32* @stdout, align 4
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @utf8_fprintf(i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %207)
  %209 = load i8*, i8** %12, align 8
  %210 = call i32 @free(i8* %209)
  %211 = load i32, i32* %13, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, %211
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %198, %166, %104
  br label %14

216:                                              ; preds = %82, %24
  %217 = load i8*, i8** %6, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 0, i8* %221, align 1
  store i32 1, i32* %4, align 4
  br label %222

222:                                              ; preds = %216, %192
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @ReadConsoleInput(i32*, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clz(i8 zeroext) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @FromWide(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @utf8_fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_EM_SCROLL.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_EM_SCROLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_SETTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@test_EM_SCROLL.cmd = internal constant [4 x i32] [i32 129, i32 128, i32 131, i32 130], align 16
@EM_SCROLL = common dso_local global i32 0, align 4
@EM_GETFIRSTVISIBLELINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"EM_SCROLL improper return value returned (i == %d). Got 0x%08x, expected 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"EM_SCROLL improper scroll. scrolled to line %d, not 1 (i == %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"a\0Ab\0Ac\0Ad\0Ae\00", align 1
@.str.4 = private unnamed_addr constant [121 x i8] c"a LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE LONG LINE \0Ab\0Ac\0Ad\0Ae\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"EM_SCROLL page down didn't scroll by a small positive number of lines (r == 0x%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"EM_SCROLL page down not functioning (line %d scrolled to line %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [83 x i8] c"EM_SCROLL page up didn't scroll by a small negative number of lines (r == 0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"EM_SCROLL page up not functioning (line %d scrolled to line %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"EM_SCROLL line down didn't scroll by one line (r == 0x%08x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"EM_SCROLL line down didn't go down by 1 line (%d scrolled to %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"EM_SCROLL line up didn't scroll by one line (r == 0x%08x)\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"EM_SCROLL line up didn't go up by 1 line (%d scrolled to %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"EM_SCROLL line up returned indicating movement (0x%08x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"EM_SCROLL line up beyond top worked (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"EM_SCROLL page up returned indicating movement (0x%08x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"EM_SCROLL page up beyond top worked (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"EM_SCROLL page down returned indicating movement (0x%08x)\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"EM_SCROLL page down beyond bottom worked (%d -> %d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"EM_SCROLL line down returned indicating movement (0x%08x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"EM_SCROLL line down beyond bottom worked (%d -> %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EM_SCROLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EM_SCROLL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @new_richedit(i32* null)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @WM_SETTEXT, align 4
  %11 = call i32 @SendMessageA(i32 %9, i32 %10, i32 0, i32 ptrtoint ([2 x i8]* @.str to i32))
  store i32 65536, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %40, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EM_SCROLL, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* @test_EM_SCROLL.cmd, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SendMessageA(i32 %16, i32 %17, i32 %21, i32 0)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %25 = call i32 @SendMessageA(i32 %23, i32 %24, i32 0, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %29, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %15
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %247, %43
  %45 = load i32, i32* %1, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %250

47:                                               ; preds = %44
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @WM_SETTEXT, align 4
  %53 = call i32 @SendMessageA(i32 %51, i32 %52, i32 0, i32 ptrtoint ([10 x i8]* @.str.3 to i32))
  br label %58

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @WM_SETTEXT, align 4
  %57 = call i32 @SendMessageA(i32 %55, i32 %56, i32 0, i32 ptrtoint ([121 x i8]* @.str.4 to i32))
  br label %58

58:                                               ; preds = %54, %50
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %66, %58
  %60 = load i32, i32* %2, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @EM_SCROLL, align 4
  %65 = call i32 @SendMessageA(i32 %63, i32 %64, i32 128, i32 0)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %59

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %72 = call i32 @SendMessageA(i32 %70, i32 %71, i32 0, i32 0)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @EM_SCROLL, align 4
  %75 = call i32 @SendMessageA(i32 %73, i32 %74, i32 129, i32 0)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %78 = call i32 @SendMessageA(i32 %76, i32 %77, i32 0, i32 0)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, -256
  %81 = icmp eq i32 %80, 65536
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, 255
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %82, %69
  %87 = phi i1 [ false, %69 ], [ %85, %82 ]
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, i32, ...) @ok(i32 %88, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @EM_SCROLL, align 4
  %101 = call i32 @SendMessageA(i32 %99, i32 %100, i32 128, i32 0)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %104 = call i32 @SendMessageA(i32 %102, i32 %103, i32 0, i32 0)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, -256
  %107 = icmp eq i32 %106, 130816
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i32, i8*, i32, ...) @ok(i32 %108, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @EM_SCROLL, align 4
  %121 = call i32 @SendMessageA(i32 %119, i32 %120, i32 131, i32 0)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %124 = call i32 @SendMessageA(i32 %122, i32 %123, i32 0, i32 0)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp eq i32 %125, 65537
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %3, align 4
  %129 = call i32 (i32, i8*, i32, ...) @ok(i32 %127, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, i8*, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @EM_SCROLL, align 4
  %141 = call i32 @SendMessageA(i32 %139, i32 %140, i32 130, i32 0)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %144 = call i32 @SendMessageA(i32 %142, i32 %143, i32 0, i32 0)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 131071
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %3, align 4
  %149 = call i32 (i32, i8*, i32, ...) @ok(i32 %147, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (i32, i8*, i32, ...) @ok(i32 %154, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @EM_SCROLL, align 4
  %161 = call i32 @SendMessageA(i32 %159, i32 %160, i32 130, i32 0)
  store i32 %161, i32* %3, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %164 = call i32 @SendMessageA(i32 %162, i32 %163, i32 0, i32 0)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %3, align 4
  %166 = icmp eq i32 %165, 65536
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i32, i8*, i32, ...) @ok(i32 %167, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %7, align 4
  %175 = call i32 (i32, i8*, i32, ...) @ok(i32 %173, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @EM_SCROLL, align 4
  %179 = call i32 @SendMessageA(i32 %177, i32 %178, i32 128, i32 0)
  store i32 %179, i32* %3, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %182 = call i32 @SendMessageA(i32 %180, i32 %181, i32 0, i32 0)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp eq i32 %183, 65536
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* %3, align 4
  %187 = call i32 (i32, i8*, i32, ...) @ok(i32 %185, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %7, align 4
  %193 = call i32 (i32, i8*, i32, ...) @ok(i32 %191, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %192)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %201, %86
  %195 = load i32, i32* %2, align 4
  %196 = icmp slt i32 %195, 12
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @EM_SCROLL, align 4
  %200 = call i32 @SendMessageA(i32 %198, i32 %199, i32 129, i32 0)
  br label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %2, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %2, align 4
  br label %194

204:                                              ; preds = %194
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %207 = call i32 @SendMessageA(i32 %205, i32 %206, i32 0, i32 0)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @EM_SCROLL, align 4
  %210 = call i32 @SendMessageA(i32 %208, i32 %209, i32 129, i32 0)
  store i32 %210, i32* %3, align 4
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %213 = call i32 @SendMessageA(i32 %211, i32 %212, i32 0, i32 0)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %3, align 4
  %215 = icmp eq i32 %214, 65536
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %3, align 4
  %218 = call i32 (i32, i8*, i32, ...) @ok(i32 %216, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp eq i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (i32, i8*, i32, ...) @ok(i32 %222, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %228 = call i32 @SendMessageA(i32 %226, i32 %227, i32 0, i32 0)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @EM_SCROLL, align 4
  %231 = call i32 @SendMessageA(i32 %229, i32 %230, i32 131, i32 0)
  store i32 %231, i32* %3, align 4
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @EM_GETFIRSTVISIBLELINE, align 4
  %234 = call i32 @SendMessageA(i32 %232, i32 %233, i32 0, i32 0)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %3, align 4
  %236 = icmp eq i32 %235, 65536
  %237 = zext i1 %236 to i32
  %238 = load i32, i32* %3, align 4
  %239 = call i32 (i32, i8*, i32, ...) @ok(i32 %237, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 (i32, i8*, i32, ...) @ok(i32 %243, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %204
  %248 = load i32, i32* %1, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %1, align 4
  br label %44

250:                                              ; preds = %44
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @DestroyWindow(i32 %251)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

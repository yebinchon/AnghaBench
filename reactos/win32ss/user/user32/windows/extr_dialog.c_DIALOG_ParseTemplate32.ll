; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_ParseTemplate32.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_ParseTemplate32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i8*, i32*, i32*, i32*, i8*, i8* }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"DIALOG%s %d, %d, %d, %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"EX\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" STYLE 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" EXSTYLE 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" MENU %04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" MENU %s\0A\00", align 1
@WC_DIALOG = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c" CLASS %04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" CLASS %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" CAPTION %s\0A\00", align 1
@FW_DONTCARE = common dso_local global i32 0, align 4
@DS_SETFONT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c" FONT: Using message box font\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c" FONT %d, %s, %d, %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_3__*)* @DIALOG_ParseTemplate32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DIALOG_ParseTemplate32(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @GET_WORD(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @GET_WORD(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 65535
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i8*, i8** @TRUE, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @GET_DWORD(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 15
  store i8* %28, i8** %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i8* @GET_DWORD(i32* %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 14
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @GET_DWORD(i32* %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32* %45, i32** %5, align 8
  br label %64

46:                                               ; preds = %20, %2
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -2
  %49 = call i8* @GET_DWORD(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 10
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 15
  store i8* null, i8** %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i8* @GET_DWORD(i32* %58)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 14
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %5, align 8
  br label %64

64:                                               ; preds = %46, %23
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @GET_WORD(i32* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @GET_WORD(i32* %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @GET_WORD(i32* %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %5, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @GET_WORD(i32* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @GET_WORD(i32* %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %5, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 10
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 15
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %103, i32 %106, i32 %109, i32 %112, i8* %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 14
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @GET_WORD(i32* %125)
  switch i32 %126, label %148 [
    i32 0, label %127
    i32 65535, label %132
  ]

127:                                              ; preds = %64
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 13
  store i32* null, i32** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %5, align 8
  br label %166

132:                                              ; preds = %64
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = call i32 @GET_WORD(i32* %134)
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = bitcast i8* %137 to i32*
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 13
  store i32* %138, i32** %140, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32* %142, i32** %5, align 8
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 13
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @LOWORD(i32* %145)
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %166

148:                                              ; preds = %64
  %149 = load i32*, i32** %5, align 8
  %150 = bitcast i32* %149 to i8*
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 13
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 13
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @debugstr_w(i32* %156)
  %158 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 13
  %161 = load i32*, i32** %160, align 8
  %162 = call i64 @strlenW(i32* %161)
  %163 = add nsw i64 %162, 1
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 %163
  store i32* %165, i32** %5, align 8
  br label %166

166:                                              ; preds = %148, %132, %127
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @GET_WORD(i32* %167)
  switch i32 %168, label %191 [
    i32 0, label %169
    i32 65535, label %175
  ]

169:                                              ; preds = %166
  %170 = load i32*, i32** @WC_DIALOG, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 12
  store i32* %170, i32** %172, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %5, align 8
  br label %209

175:                                              ; preds = %166
  %176 = load i32*, i32** %5, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = call i32 @GET_WORD(i32* %177)
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 12
  store i32* %181, i32** %183, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  store i32* %185, i32** %5, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 12
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @LOWORD(i32* %188)
  %190 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  br label %209

191:                                              ; preds = %166
  %192 = load i32*, i32** %5, align 8
  %193 = bitcast i32* %192 to i8*
  %194 = bitcast i8* %193 to i32*
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 12
  store i32* %194, i32** %196, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 12
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @debugstr_w(i32* %199)
  %201 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 12
  %204 = load i32*, i32** %203, align 8
  %205 = call i64 @strlenW(i32* %204)
  %206 = add nsw i64 %205, 1
  %207 = load i32*, i32** %5, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 %206
  store i32* %208, i32** %5, align 8
  br label %209

209:                                              ; preds = %191, %175, %169
  %210 = load i32*, i32** %5, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = bitcast i8* %211 to i32*
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 11
  store i32* %212, i32** %214, align 8
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 11
  %217 = load i32*, i32** %216, align 8
  %218 = call i64 @strlenW(i32* %217)
  %219 = add nsw i64 %218, 1
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 %219
  store i32* %221, i32** %5, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 11
  %224 = load i32*, i32** %223, align 8
  %225 = call i32 @debugstr_w(i32* %224)
  %226 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %225)
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 6
  store i32 0, i32* %228, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 9
  store i32* null, i32** %230, align 8
  %231 = load i32, i32* @FW_DONTCARE, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 7
  store i32 %231, i32* %233, align 4
  %234 = load i8*, i8** @FALSE, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 8
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @DS_SETFONT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %306

243:                                              ; preds = %209
  %244 = load i32*, i32** %5, align 8
  %245 = call i32 @GET_WORD(i32* %244)
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  %248 = load i32*, i32** %5, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %5, align 8
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 32767
  br i1 %253, label %254, label %256

254:                                              ; preds = %243
  %255 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %305

256:                                              ; preds = %243
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 10
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %275

261:                                              ; preds = %256
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 @GET_WORD(i32* %262)
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 7
  store i32 %263, i32* %265, align 4
  %266 = load i32*, i32** %5, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %5, align 8
  %268 = load i32*, i32** %5, align 8
  %269 = call i32 @GET_WORD(i32* %268)
  %270 = call i8* @LOBYTE(i32 %269)
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 8
  store i8* %270, i8** %272, align 8
  %273 = load i32*, i32** %5, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %5, align 8
  br label %275

275:                                              ; preds = %261, %256
  %276 = load i32*, i32** %5, align 8
  %277 = bitcast i32* %276 to i8*
  %278 = bitcast i8* %277 to i32*
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 9
  store i32* %278, i32** %280, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 9
  %283 = load i32*, i32** %282, align 8
  %284 = call i64 @strlenW(i32* %283)
  %285 = add nsw i64 %284, 1
  %286 = load i32*, i32** %5, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 %285
  store i32* %287, i32** %5, align 8
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 9
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @debugstr_w(i32* %293)
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 8
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %304 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %290, i32 %294, i32 %297, i8* %303)
  br label %305

305:                                              ; preds = %275, %254
  br label %306

306:                                              ; preds = %305, %209
  %307 = load i32*, i32** %5, align 8
  %308 = ptrtoint i32* %307 to i32
  %309 = add nsw i32 %308, 3
  %310 = and i32 %309, -4
  %311 = sext i32 %310 to i64
  ret i64 %311
}

declare dso_local i32 @GET_WORD(i32*) #1

declare dso_local i8* @GET_DWORD(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @LOWORD(i32*) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i64 @strlenW(i32*) #1

declare dso_local i8* @LOBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

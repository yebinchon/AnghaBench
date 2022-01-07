; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_GetControl32.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_GetControl32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_7__*, i8* }

@DIALOG_GetControl32.class_names = internal constant [6 x <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }>] [<{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }> <{ %struct.TYPE_7__ { i8 66, i8 117, i8 116, i8 116, i8 111, i8 110, i8 0, i8 0, i8 0 }, [9 x %struct.TYPE_7__] zeroinitializer }>, <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }> <{ %struct.TYPE_7__ { i8 69, i8 100, i8 105, i8 116, i8 0, i8 0, i8 0, i8 0, i8 0 }, [9 x %struct.TYPE_7__] zeroinitializer }>, <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }> <{ %struct.TYPE_7__ { i8 83, i8 116, i8 97, i8 116, i8 105, i8 99, i8 0, i8 0, i8 0 }, [9 x %struct.TYPE_7__] zeroinitializer }>, <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }> <{ %struct.TYPE_7__ { i8 76, i8 105, i8 115, i8 116, i8 66, i8 111, i8 120, i8 0, i8 0 }, [9 x %struct.TYPE_7__] zeroinitializer }>, <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }> <{ %struct.TYPE_7__ { i8 83, i8 99, i8 114, i8 111, i8 108, i8 108, i8 66, i8 97, i8 114 }, [9 x %struct.TYPE_7__] zeroinitializer }>, <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }> <{ %struct.TYPE_7__ { i8 67, i8 111, i8 109, i8 98, i8 111, i8 66, i8 111, i8 120, i8 0 }, [9 x %struct.TYPE_7__] zeroinitializer }>], align 16
@.str = private unnamed_addr constant [32 x i8] c"Unknown built-in class id %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i32] [i32 35, i32 37, i32 117, i32 0], align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"    %s %s %ld, %d, %d, %d, %d, %08x, %08x, %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_8__*, i64)* @DIALOG_GetControl32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DIALOG_GetControl32(i32* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @GET_DWORD(i32* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @GET_DWORD(i32* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @GET_DWORD(i32* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32* %28, i32** %4, align 8
  br label %44

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  store i8* null, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @GET_DWORD(i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @GET_DWORD(i32* %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %29, %10
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @GET_WORD(i32* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @GET_WORD(i32* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @GET_WORD(i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @GET_WORD(i32* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %44
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @GET_LONG(i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32* %77, i32** %4, align 8
  br label %85

78:                                               ; preds = %44
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @GET_WORD(i32* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %78, %71
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @GET_WORD(i32* %86)
  %88 = icmp eq i32 %87, 65535
  br i1 %88, label %89, label %119

89:                                               ; preds = %85
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = call i32 @GET_WORD(i32* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 128
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %96, 133
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 128
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %95, %89
  %102 = load i32, i32* %7, align 4
  %103 = icmp sle i32 %102, 5
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [6 x [10 x %struct.TYPE_7__]], [6 x [10 x %struct.TYPE_7__]]* bitcast ([6 x <{ %struct.TYPE_7__, [9 x %struct.TYPE_7__] }>]* @DIALOG_GetControl32.class_names to [6 x [10 x %struct.TYPE_7__]]*), i64 0, i64 %106
  %108 = getelementptr inbounds [10 x %struct.TYPE_7__], [10 x %struct.TYPE_7__]* %107, i64 0, i64 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 10
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %110, align 8
  br label %116

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 10
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %104
  %117 = load i32*, i32** %4, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32* %118, i32** %4, align 8
  br label %132

119:                                              ; preds = %85
  %120 = load i32*, i32** %4, align 8
  %121 = bitcast i32* %120 to i8*
  %122 = bitcast i8* %121 to %struct.TYPE_7__*
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 10
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %124, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 10
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = call i64 @strlenW(%struct.TYPE_7__* %127)
  %129 = add nsw i64 %128, 1
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 %129
  store i32* %131, i32** %4, align 8
  br label %132

132:                                              ; preds = %119, %116
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @GET_WORD(i32* %133)
  %135 = icmp eq i32 %134, 65535
  br i1 %135, label %136, label %164

136:                                              ; preds = %132
  %137 = call i32 (...) @GetProcessHeap()
  %138 = call %struct.TYPE_7__* @HeapAlloc(i32 %137, i32 0, i32 28)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 9
  store %struct.TYPE_7__* %138, %struct.TYPE_7__** %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 9
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = icmp ne %struct.TYPE_7__* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %136
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 9
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = ptrtoint %struct.TYPE_7__* %148 to i32
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = call i32 @GET_WORD(i32* %151)
  %153 = call i32 @wsprintf(i32 %149, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32 %152)
  %154 = load i8*, i8** @TRUE, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 11
  store i8* %154, i8** %156, align 8
  br label %161

157:                                              ; preds = %136
  %158 = load i8*, i8** @FALSE, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 11
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %157, %145
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  store i32* %163, i32** %4, align 8
  br label %180

164:                                              ; preds = %132
  %165 = load i32*, i32** %4, align 8
  %166 = bitcast i32* %165 to i8*
  %167 = bitcast i8* %166 to %struct.TYPE_7__*
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 9
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %169, align 8
  %170 = load i8*, i8** @FALSE, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 11
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 9
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = call i64 @strlenW(%struct.TYPE_7__* %175)
  %177 = add nsw i64 %176, 1
  %178 = load i32*, i32** %4, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 %177
  store i32* %179, i32** %4, align 8
  br label %180

180:                                              ; preds = %164, %161
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 10
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = call i32 @debugstr_w(%struct.TYPE_7__* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 9
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = call i32 @debugstr_w(%struct.TYPE_7__* %187)
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 8
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 7
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 6
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %188, i32 %191, i32 %194, i32 %197, i32 %200, i32 %203, i8* %206, i8* %209, i8* %212)
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @GET_WORD(i32* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %180
  %218 = load i32*, i32** %4, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 5
  store i32* %218, i32** %220, align 8
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @GET_WORD(i32* %221)
  %223 = sext i32 %222 to i64
  %224 = udiv i64 %223, 4
  %225 = load i32*, i32** %4, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 %224
  store i32* %226, i32** %4, align 8
  br label %230

227:                                              ; preds = %180
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 5
  store i32* null, i32** %229, align 8
  br label %230

230:                                              ; preds = %227, %217
  %231 = load i32*, i32** %4, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %4, align 8
  %233 = load i32*, i32** %4, align 8
  %234 = ptrtoint i32* %233 to i32
  %235 = add nsw i32 %234, 3
  %236 = and i32 %235, -4
  %237 = sext i32 %236 to i64
  %238 = inttoptr i64 %237 to i32*
  ret i32* %238
}

declare dso_local i8* @GET_DWORD(i32*) #1

declare dso_local i32 @GET_WORD(i32*) #1

declare dso_local i32 @GET_LONG(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @strlenW(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wsprintf(i32, i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @debugstr_w(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

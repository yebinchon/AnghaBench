; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_NextDlgItem.c_DoTest2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_NextDlgItem.c_DoTest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rad1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rad2 = common dso_local global i64 0, align 8
@rad3 = common dso_local global i64 0, align 8
@psh1 = common dso_local global i64 0, align 8
@rad5 = common dso_local global i64 0, align 8
@rad6 = common dso_local global i64 0, align 8
@rad7 = common dso_local global i64 0, align 8
@IDOK = common dso_local global i64 0, align 8
@IDCANCEL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hCtrl is %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@SW_SHOWNOACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @DoTest2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoTest2(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @rad1, align 8
  %15 = call i64 @GetDlgItem(i64 %13, i64 %14)
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @GetDlgCtrlID(i64 %16)
  %18 = load i64, i64* @rad1, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @rad2, align 8
  %24 = call i64 @GetDlgItem(i64 %22, i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @GetDlgCtrlID(i64 %25)
  %27 = load i64, i64* @rad2, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @rad3, align 8
  %33 = call i64 @GetDlgItem(i64 %31, i64 %32)
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @GetDlgCtrlID(i64 %34)
  %36 = load i64, i64* @rad3, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @psh1, align 8
  %42 = call i64 @GetDlgItem(i64 %40, i64 %41)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @GetDlgCtrlID(i64 %43)
  %45 = load i64, i64* @psh1, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @rad5, align 8
  %51 = call i64 @GetDlgItem(i64 %49, i64 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @GetDlgCtrlID(i64 %52)
  %54 = load i64, i64* @rad5, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @rad6, align 8
  %60 = call i64 @GetDlgItem(i64 %58, i64 %59)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @GetDlgCtrlID(i64 %61)
  %63 = load i64, i64* @rad6, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* @rad7, align 8
  %69 = call i64 @GetDlgItem(i64 %67, i64 %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i64 @GetDlgCtrlID(i64 %70)
  %72 = load i64, i64* @rad7, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* @IDOK, align 8
  %78 = call i64 @GetDlgItem(i64 %76, i64 %77)
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i64 @GetDlgCtrlID(i64 %79)
  %81 = load i64, i64* @IDOK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %85 = load i64, i64* %2, align 8
  %86 = load i64, i64* @IDCANCEL, align 8
  %87 = call i64 @GetDlgItem(i64 %85, i64 %86)
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %3, align 8
  %89 = call i64 @GetDlgCtrlID(i64 %88)
  %90 = load i64, i64* @IDCANCEL, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %94 = load i64, i64* %2, align 8
  %95 = load i64, i64* @rad1, align 8
  %96 = call i64 @GetDlgItem(i64 %94, i64 %95)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @rad2, align 8
  %99 = call i64 @GetDlgItem(i64 %97, i64 %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %2, align 8
  %101 = load i64, i64* @rad3, align 8
  %102 = call i64 @GetDlgItem(i64 %100, i64 %101)
  store i64 %102, i64* %6, align 8
  %103 = load i64, i64* %2, align 8
  %104 = load i64, i64* @psh1, align 8
  %105 = call i64 @GetDlgItem(i64 %103, i64 %104)
  store i64 %105, i64* %7, align 8
  %106 = load i64, i64* %2, align 8
  %107 = load i64, i64* @rad5, align 8
  %108 = call i64 @GetDlgItem(i64 %106, i64 %107)
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %2, align 8
  %110 = load i64, i64* @rad6, align 8
  %111 = call i64 @GetDlgItem(i64 %109, i64 %110)
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %2, align 8
  %113 = load i64, i64* @rad7, align 8
  %114 = call i64 @GetDlgItem(i64 %112, i64 %113)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %2, align 8
  %116 = load i64, i64* @IDOK, align 8
  %117 = call i64 @GetDlgItem(i64 %115, i64 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* %2, align 8
  %119 = load i64, i64* @IDCANCEL, align 8
  %120 = call i64 @GetDlgItem(i64 %118, i64 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %2, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i64 @GetNextDlgGroupItem(i64 %121, i64 %122, i32 %123)
  store i64 %124, i64* %3, align 8
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %5, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %3, align 8
  %130 = call i32 @GetNameFromHWND(i64 %129)
  %131 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i64, i64* %2, align 8
  %133 = load i64, i64* %5, align 8
  %134 = load i32, i32* @FALSE, align 4
  %135 = call i64 @GetNextDlgGroupItem(i64 %132, i64 %133, i32 %134)
  store i64 %135, i64* %3, align 8
  %136 = load i64, i64* %3, align 8
  %137 = load i64, i64* %6, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i64, i64* %3, align 8
  %141 = call i32 @GetNameFromHWND(i64 %140)
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i64, i64* %2, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i32, i32* @FALSE, align 4
  %146 = call i64 @GetNextDlgGroupItem(i64 %143, i64 %144, i32 %145)
  store i64 %146, i64* %3, align 8
  %147 = load i64, i64* %3, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %3, align 8
  %152 = call i32 @GetNameFromHWND(i64 %151)
  %153 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  %154 = load i64, i64* %2, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load i32, i32* @FALSE, align 4
  %157 = call i64 @GetNextDlgGroupItem(i64 %154, i64 %155, i32 %156)
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* %8, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i64, i64* %3, align 8
  %163 = call i32 @GetNameFromHWND(i64 %162)
  %164 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  %165 = load i64, i64* %2, align 8
  %166 = load i64, i64* %8, align 8
  %167 = load i32, i32* @FALSE, align 4
  %168 = call i64 @GetNextDlgGroupItem(i64 %165, i64 %166, i32 %167)
  store i64 %168, i64* %3, align 8
  %169 = load i64, i64* %3, align 8
  %170 = load i64, i64* %9, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i64, i64* %3, align 8
  %174 = call i32 @GetNameFromHWND(i64 %173)
  %175 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load i64, i64* %2, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i32, i32* @FALSE, align 4
  %179 = call i64 @GetNextDlgGroupItem(i64 %176, i64 %177, i32 %178)
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %3, align 8
  %181 = load i64, i64* %10, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %3, align 8
  %185 = call i32 @GetNameFromHWND(i64 %184)
  %186 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i64, i64* %2, align 8
  %188 = load i64, i64* %10, align 8
  %189 = load i32, i32* @FALSE, align 4
  %190 = call i64 @GetNextDlgGroupItem(i64 %187, i64 %188, i32 %189)
  store i64 %190, i64* %3, align 8
  %191 = load i64, i64* %3, align 8
  %192 = load i64, i64* %11, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i64, i64* %3, align 8
  %196 = call i32 @GetNameFromHWND(i64 %195)
  %197 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  %198 = load i64, i64* %2, align 8
  %199 = load i64, i64* %11, align 8
  %200 = load i32, i32* @FALSE, align 4
  %201 = call i64 @GetNextDlgGroupItem(i64 %198, i64 %199, i32 %200)
  store i64 %201, i64* %3, align 8
  %202 = load i64, i64* %3, align 8
  %203 = load i64, i64* %12, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i64, i64* %3, align 8
  %207 = call i32 @GetNameFromHWND(i64 %206)
  %208 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %207)
  %209 = load i64, i64* %2, align 8
  %210 = load i64, i64* %12, align 8
  %211 = load i32, i32* @FALSE, align 4
  %212 = call i64 @GetNextDlgGroupItem(i64 %209, i64 %210, i32 %211)
  store i64 %212, i64* %3, align 8
  %213 = load i64, i64* %3, align 8
  %214 = load i64, i64* %4, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i64, i64* %3, align 8
  %218 = call i32 @GetNameFromHWND(i64 %217)
  %219 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %218)
  %220 = load i64, i64* %2, align 8
  %221 = load i64, i64* %4, align 8
  %222 = load i32, i32* @TRUE, align 4
  %223 = call i64 @GetNextDlgGroupItem(i64 %220, i64 %221, i32 %222)
  store i64 %223, i64* %3, align 8
  %224 = load i64, i64* %3, align 8
  %225 = load i64, i64* %12, align 8
  %226 = icmp eq i64 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i64, i64* %3, align 8
  %229 = call i32 @GetNameFromHWND(i64 %228)
  %230 = call i32 (i32, i8*, ...) @ok(i32 %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  %231 = load i64, i64* %2, align 8
  %232 = load i64, i64* %5, align 8
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i64 @GetNextDlgGroupItem(i64 %231, i64 %232, i32 %233)
  store i64 %234, i64* %3, align 8
  %235 = load i64, i64* %3, align 8
  %236 = load i64, i64* %4, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %3, align 8
  %240 = call i32 @GetNameFromHWND(i64 %239)
  %241 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %240)
  %242 = load i64, i64* %2, align 8
  %243 = load i64, i64* %6, align 8
  %244 = load i32, i32* @TRUE, align 4
  %245 = call i64 @GetNextDlgGroupItem(i64 %242, i64 %243, i32 %244)
  store i64 %245, i64* %3, align 8
  %246 = load i64, i64* %3, align 8
  %247 = load i64, i64* %5, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = load i64, i64* %3, align 8
  %251 = call i32 @GetNameFromHWND(i64 %250)
  %252 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %251)
  %253 = load i64, i64* %2, align 8
  %254 = load i64, i64* %7, align 8
  %255 = load i32, i32* @TRUE, align 4
  %256 = call i64 @GetNextDlgGroupItem(i64 %253, i64 %254, i32 %255)
  store i64 %256, i64* %3, align 8
  %257 = load i64, i64* %3, align 8
  %258 = load i64, i64* %6, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i64, i64* %3, align 8
  %262 = call i32 @GetNameFromHWND(i64 %261)
  %263 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %262)
  %264 = load i64, i64* %2, align 8
  %265 = load i64, i64* %8, align 8
  %266 = load i32, i32* @TRUE, align 4
  %267 = call i64 @GetNextDlgGroupItem(i64 %264, i64 %265, i32 %266)
  store i64 %267, i64* %3, align 8
  %268 = load i64, i64* %3, align 8
  %269 = load i64, i64* %7, align 8
  %270 = icmp eq i64 %268, %269
  %271 = zext i1 %270 to i32
  %272 = load i64, i64* %3, align 8
  %273 = call i32 @GetNameFromHWND(i64 %272)
  %274 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %273)
  %275 = load i64, i64* %2, align 8
  %276 = load i64, i64* %9, align 8
  %277 = load i32, i32* @TRUE, align 4
  %278 = call i64 @GetNextDlgGroupItem(i64 %275, i64 %276, i32 %277)
  store i64 %278, i64* %3, align 8
  %279 = load i64, i64* %3, align 8
  %280 = load i64, i64* %8, align 8
  %281 = icmp eq i64 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load i64, i64* %3, align 8
  %284 = call i32 @GetNameFromHWND(i64 %283)
  %285 = call i32 (i32, i8*, ...) @ok(i32 %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %284)
  %286 = load i64, i64* %2, align 8
  %287 = load i64, i64* %10, align 8
  %288 = load i32, i32* @TRUE, align 4
  %289 = call i64 @GetNextDlgGroupItem(i64 %286, i64 %287, i32 %288)
  store i64 %289, i64* %3, align 8
  %290 = load i64, i64* %3, align 8
  %291 = load i64, i64* %9, align 8
  %292 = icmp eq i64 %290, %291
  %293 = zext i1 %292 to i32
  %294 = load i64, i64* %3, align 8
  %295 = call i32 @GetNameFromHWND(i64 %294)
  %296 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %295)
  %297 = load i64, i64* %2, align 8
  %298 = load i64, i64* %11, align 8
  %299 = load i32, i32* @TRUE, align 4
  %300 = call i64 @GetNextDlgGroupItem(i64 %297, i64 %298, i32 %299)
  store i64 %300, i64* %3, align 8
  %301 = load i64, i64* %3, align 8
  %302 = load i64, i64* %10, align 8
  %303 = icmp eq i64 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load i64, i64* %3, align 8
  %306 = call i32 @GetNameFromHWND(i64 %305)
  %307 = call i32 (i32, i8*, ...) @ok(i32 %304, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %306)
  %308 = load i64, i64* %2, align 8
  %309 = load i64, i64* %12, align 8
  %310 = load i32, i32* @TRUE, align 4
  %311 = call i64 @GetNextDlgGroupItem(i64 %308, i64 %309, i32 %310)
  store i64 %311, i64* %3, align 8
  %312 = load i64, i64* %3, align 8
  %313 = load i64, i64* %11, align 8
  %314 = icmp eq i64 %312, %313
  %315 = zext i1 %314 to i32
  %316 = load i64, i64* %3, align 8
  %317 = call i32 @GetNameFromHWND(i64 %316)
  %318 = call i32 (i32, i8*, ...) @ok(i32 %315, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %317)
  %319 = load i64, i64* %6, align 8
  %320 = load i32, i32* @SW_HIDE, align 4
  %321 = call i64 @ShowWindow(i64 %319, i32 %320)
  %322 = icmp ne i64 %321, 0
  %323 = zext i1 %322 to i32
  %324 = call i32 (i32, i8*, ...) @ok(i32 %323, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %325 = load i64, i64* %9, align 8
  %326 = load i32, i32* @SW_HIDE, align 4
  %327 = call i64 @ShowWindow(i64 %325, i32 %326)
  %328 = icmp ne i64 %327, 0
  %329 = zext i1 %328 to i32
  %330 = call i32 (i32, i8*, ...) @ok(i32 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %331 = load i64, i64* %2, align 8
  %332 = load i64, i64* %4, align 8
  %333 = load i32, i32* @FALSE, align 4
  %334 = call i64 @GetNextDlgGroupItem(i64 %331, i64 %332, i32 %333)
  store i64 %334, i64* %3, align 8
  %335 = load i64, i64* %3, align 8
  %336 = load i64, i64* %5, align 8
  %337 = icmp eq i64 %335, %336
  %338 = zext i1 %337 to i32
  %339 = load i64, i64* %3, align 8
  %340 = call i32 @GetNameFromHWND(i64 %339)
  %341 = call i32 (i32, i8*, ...) @ok(i32 %338, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %340)
  %342 = load i64, i64* %2, align 8
  %343 = load i64, i64* %5, align 8
  %344 = load i32, i32* @FALSE, align 4
  %345 = call i64 @GetNextDlgGroupItem(i64 %342, i64 %343, i32 %344)
  store i64 %345, i64* %3, align 8
  %346 = load i64, i64* %3, align 8
  %347 = load i64, i64* %7, align 8
  %348 = icmp eq i64 %346, %347
  %349 = zext i1 %348 to i32
  %350 = load i64, i64* %3, align 8
  %351 = call i32 @GetNameFromHWND(i64 %350)
  %352 = call i32 (i32, i8*, ...) @ok(i32 %349, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %351)
  %353 = load i64, i64* %2, align 8
  %354 = load i64, i64* %7, align 8
  %355 = load i32, i32* @FALSE, align 4
  %356 = call i64 @GetNextDlgGroupItem(i64 %353, i64 %354, i32 %355)
  store i64 %356, i64* %3, align 8
  %357 = load i64, i64* %3, align 8
  %358 = load i64, i64* %8, align 8
  %359 = icmp eq i64 %357, %358
  %360 = zext i1 %359 to i32
  %361 = load i64, i64* %3, align 8
  %362 = call i32 @GetNameFromHWND(i64 %361)
  %363 = call i32 (i32, i8*, ...) @ok(i32 %360, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %362)
  %364 = load i64, i64* %2, align 8
  %365 = load i64, i64* %8, align 8
  %366 = load i32, i32* @FALSE, align 4
  %367 = call i64 @GetNextDlgGroupItem(i64 %364, i64 %365, i32 %366)
  store i64 %367, i64* %3, align 8
  %368 = load i64, i64* %3, align 8
  %369 = load i64, i64* %10, align 8
  %370 = icmp eq i64 %368, %369
  %371 = zext i1 %370 to i32
  %372 = load i64, i64* %3, align 8
  %373 = call i32 @GetNameFromHWND(i64 %372)
  %374 = call i32 (i32, i8*, ...) @ok(i32 %371, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %373)
  %375 = load i64, i64* %2, align 8
  %376 = load i64, i64* %10, align 8
  %377 = load i32, i32* @FALSE, align 4
  %378 = call i64 @GetNextDlgGroupItem(i64 %375, i64 %376, i32 %377)
  store i64 %378, i64* %3, align 8
  %379 = load i64, i64* %3, align 8
  %380 = load i64, i64* %11, align 8
  %381 = icmp eq i64 %379, %380
  %382 = zext i1 %381 to i32
  %383 = load i64, i64* %3, align 8
  %384 = call i32 @GetNameFromHWND(i64 %383)
  %385 = call i32 (i32, i8*, ...) @ok(i32 %382, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %384)
  %386 = load i64, i64* %2, align 8
  %387 = load i64, i64* %11, align 8
  %388 = load i32, i32* @FALSE, align 4
  %389 = call i64 @GetNextDlgGroupItem(i64 %386, i64 %387, i32 %388)
  store i64 %389, i64* %3, align 8
  %390 = load i64, i64* %3, align 8
  %391 = load i64, i64* %12, align 8
  %392 = icmp eq i64 %390, %391
  %393 = zext i1 %392 to i32
  %394 = load i64, i64* %3, align 8
  %395 = call i32 @GetNameFromHWND(i64 %394)
  %396 = call i32 (i32, i8*, ...) @ok(i32 %393, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %395)
  %397 = load i64, i64* %2, align 8
  %398 = load i64, i64* %12, align 8
  %399 = load i32, i32* @FALSE, align 4
  %400 = call i64 @GetNextDlgGroupItem(i64 %397, i64 %398, i32 %399)
  store i64 %400, i64* %3, align 8
  %401 = load i64, i64* %3, align 8
  %402 = load i64, i64* %4, align 8
  %403 = icmp eq i64 %401, %402
  %404 = zext i1 %403 to i32
  %405 = load i64, i64* %3, align 8
  %406 = call i32 @GetNameFromHWND(i64 %405)
  %407 = call i32 (i32, i8*, ...) @ok(i32 %404, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %406)
  %408 = load i64, i64* %2, align 8
  %409 = load i64, i64* %4, align 8
  %410 = load i32, i32* @TRUE, align 4
  %411 = call i64 @GetNextDlgGroupItem(i64 %408, i64 %409, i32 %410)
  store i64 %411, i64* %3, align 8
  %412 = load i64, i64* %3, align 8
  %413 = load i64, i64* %12, align 8
  %414 = icmp eq i64 %412, %413
  %415 = zext i1 %414 to i32
  %416 = load i64, i64* %3, align 8
  %417 = call i32 @GetNameFromHWND(i64 %416)
  %418 = call i32 (i32, i8*, ...) @ok(i32 %415, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %417)
  %419 = load i64, i64* %2, align 8
  %420 = load i64, i64* %5, align 8
  %421 = load i32, i32* @TRUE, align 4
  %422 = call i64 @GetNextDlgGroupItem(i64 %419, i64 %420, i32 %421)
  store i64 %422, i64* %3, align 8
  %423 = load i64, i64* %3, align 8
  %424 = load i64, i64* %4, align 8
  %425 = icmp eq i64 %423, %424
  %426 = zext i1 %425 to i32
  %427 = load i64, i64* %3, align 8
  %428 = call i32 @GetNameFromHWND(i64 %427)
  %429 = call i32 (i32, i8*, ...) @ok(i32 %426, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %428)
  %430 = load i64, i64* %2, align 8
  %431 = load i64, i64* %7, align 8
  %432 = load i32, i32* @TRUE, align 4
  %433 = call i64 @GetNextDlgGroupItem(i64 %430, i64 %431, i32 %432)
  store i64 %433, i64* %3, align 8
  %434 = load i64, i64* %3, align 8
  %435 = load i64, i64* %5, align 8
  %436 = icmp eq i64 %434, %435
  %437 = zext i1 %436 to i32
  %438 = load i64, i64* %3, align 8
  %439 = call i32 @GetNameFromHWND(i64 %438)
  %440 = call i32 (i32, i8*, ...) @ok(i32 %437, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %439)
  %441 = load i64, i64* %2, align 8
  %442 = load i64, i64* %8, align 8
  %443 = load i32, i32* @TRUE, align 4
  %444 = call i64 @GetNextDlgGroupItem(i64 %441, i64 %442, i32 %443)
  store i64 %444, i64* %3, align 8
  %445 = load i64, i64* %3, align 8
  %446 = load i64, i64* %7, align 8
  %447 = icmp eq i64 %445, %446
  %448 = zext i1 %447 to i32
  %449 = load i64, i64* %3, align 8
  %450 = call i32 @GetNameFromHWND(i64 %449)
  %451 = call i32 (i32, i8*, ...) @ok(i32 %448, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %450)
  %452 = load i64, i64* %2, align 8
  %453 = load i64, i64* %10, align 8
  %454 = load i32, i32* @TRUE, align 4
  %455 = call i64 @GetNextDlgGroupItem(i64 %452, i64 %453, i32 %454)
  store i64 %455, i64* %3, align 8
  %456 = load i64, i64* %3, align 8
  %457 = load i64, i64* %8, align 8
  %458 = icmp eq i64 %456, %457
  %459 = zext i1 %458 to i32
  %460 = load i64, i64* %3, align 8
  %461 = call i32 @GetNameFromHWND(i64 %460)
  %462 = call i32 (i32, i8*, ...) @ok(i32 %459, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %461)
  %463 = load i64, i64* %2, align 8
  %464 = load i64, i64* %11, align 8
  %465 = load i32, i32* @TRUE, align 4
  %466 = call i64 @GetNextDlgGroupItem(i64 %463, i64 %464, i32 %465)
  store i64 %466, i64* %3, align 8
  %467 = load i64, i64* %3, align 8
  %468 = load i64, i64* %10, align 8
  %469 = icmp eq i64 %467, %468
  %470 = zext i1 %469 to i32
  %471 = load i64, i64* %3, align 8
  %472 = call i32 @GetNameFromHWND(i64 %471)
  %473 = call i32 (i32, i8*, ...) @ok(i32 %470, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %472)
  %474 = load i64, i64* %2, align 8
  %475 = load i64, i64* %12, align 8
  %476 = load i32, i32* @TRUE, align 4
  %477 = call i64 @GetNextDlgGroupItem(i64 %474, i64 %475, i32 %476)
  store i64 %477, i64* %3, align 8
  %478 = load i64, i64* %3, align 8
  %479 = load i64, i64* %11, align 8
  %480 = icmp eq i64 %478, %479
  %481 = zext i1 %480 to i32
  %482 = load i64, i64* %3, align 8
  %483 = call i32 @GetNameFromHWND(i64 %482)
  %484 = call i32 (i32, i8*, ...) @ok(i32 %481, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %483)
  %485 = load i64, i64* %6, align 8
  %486 = load i32, i32* @SW_SHOWNOACTIVATE, align 4
  %487 = call i64 @ShowWindow(i64 %485, i32 %486)
  %488 = load i64, i64* %9, align 8
  %489 = load i32, i32* @SW_SHOWNOACTIVATE, align 4
  %490 = call i64 @ShowWindow(i64 %488, i32 %489)
  ret void
}

declare dso_local i64 @GetDlgItem(i64, i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetDlgCtrlID(i64) #1

declare dso_local i64 @GetNextDlgGroupItem(i64, i64, i32) #1

declare dso_local i32 @GetNameFromHWND(i64) #1

declare dso_local i64 @ShowWindow(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

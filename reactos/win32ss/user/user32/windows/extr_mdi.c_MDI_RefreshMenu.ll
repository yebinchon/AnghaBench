; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_RefreshMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_mdi.c_MDI_RefreshMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }

@MDI_MAXTITLELENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"children %u, window menu %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Window menu handle %p is no longer valid\0A\00", align 1
@MIIM_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MF_SEPARATOR = common dso_local global i32 0, align 4
@MIIM_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"removing %u items including separator\0A\00", align 1
@MF_BYPOSITION = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@MDI_MOREWINDOWSLIMIT = common dso_local global i32 0, align 4
@User32Instance = common dso_local global i32 0, align 4
@IDS_MDI_MOREWINDOWS = common dso_local global i32 0, align 4
@MF_STRING = common dso_local global i32 0, align 4
@GWLP_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Adding %p, id %u %s\0A\00", align 1
@MF_CHECKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"MDI child %p is not visible, skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @MDI_RefreshMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MDI_RefreshMenu(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @MDI_MAXTITLELENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %245

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IsMenu(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %245

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GetMenuItemCount(i32 %42)
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %105, %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  %49 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 24)
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 24, i32* %50, align 8
  %51 = load i32, i32* @MIIM_TYPE, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i64 @GetMenuItemInfoW(i32 %55, i32 %56, i32 %57, %struct.TYPE_6__* %11)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %104

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MF_SEPARATOR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %60
  %67 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 24)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 24, i32* %68, align 8
  %69 = load i32, i32* @MIIM_ID, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* @TRUE, align 4
  %77 = call i64 @GetMenuItemInfoW(i32 %73, i32 %75, i32 %76, %struct.TYPE_6__* %11)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %99, %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @MF_BYPOSITION, align 4
  %97 = call i64 @RemoveMenu(i32 %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %91

100:                                              ; preds = %91
  br label %108

101:                                              ; preds = %79
  br label %102

102:                                              ; preds = %101, %66
  br label %103

103:                                              ; preds = %102, %60
  br label %104

104:                                              ; preds = %103, %48
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %44

108:                                              ; preds = %100, %44
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %238, %108
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %241

115:                                              ; preds = %109
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @GWL_STYLE, align 4
  %124 = call i32 @GetWindowLongPtrW(i64 %122, i32 %123)
  %125 = load i32, i32* @WS_VISIBLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %227

128:                                              ; preds = %115
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @MDI_MOREWINDOWSLIMIT, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %128
  %140 = load i32, i32* @User32Instance, align 4
  %141 = load i32, i32* @IDS_MDI_MOREWINDOWS, align 4
  %142 = udiv i64 %13, 1
  %143 = trunc i64 %142 to i32
  %144 = call i32 @LoadStringW(i32 %140, i32 %141, i8* %15, i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MF_STRING, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @AppendMenuW(i32 %147, i32 %148, i32 %149, i8* %15)
  br label %241

151:                                              ; preds = %128
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @MF_SEPARATOR, align 4
  %159 = call i32 @AppendMenuW(i32 %157, i32 %158, i32 0, i8* null)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 2
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @GWLP_ID, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @SetWindowLongPtrW(i64 %169, i32 %170, i32 %171)
  %173 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 38, i8* %173, align 16
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 48, %174
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %176, i8* %177, align 1
  %178 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 32, i8* %178, align 2
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %15, i64 3
  %187 = udiv i64 %13, 1
  %188 = sub i64 %187, 3
  %189 = trunc i64 %188 to i32
  %190 = call i32 @InternalGetWindowText(i64 %185, i8* %186, i32 %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @debugstr_w(i8* %15)
  %201 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @MF_STRING, align 4
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @AppendMenuW(i32 %204, i32 %205, i32 %206, i8* %15)
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %214, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %160
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @MF_CHECKED, align 4
  %225 = call i32 @CheckMenuItem(i32 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %219, %160
  br label %237

227:                                              ; preds = %115
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %227, %226
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %4, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %4, align 4
  br label %109

241:                                              ; preds = %139, %109
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %245

245:                                              ; preds = %241, %34, %27
  %246 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32, ...) #2

declare dso_local i32 @IsMenu(i32) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32 @GetMenuItemCount(i32) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i64 @GetMenuItemInfoW(i32, i32, i32, %struct.TYPE_6__*) #2

declare dso_local i64 @RemoveMenu(i32, i32, i32) #2

declare dso_local i32 @GetWindowLongPtrW(i64, i32) #2

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #2

declare dso_local i32 @AppendMenuW(i32, i32, i32, i8*) #2

declare dso_local i32 @SetWindowLongPtrW(i64, i32, i32) #2

declare dso_local i32 @InternalGetWindowText(i64, i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

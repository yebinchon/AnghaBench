; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_misc.c_test_HTMLLoadOptions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_misc.c_test_HTMLLoadOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_HTMLLoadOptions = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IHtmlLoadOptions = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"creating HTMLLoadOptions failed: %08x\0A\00", align 1
@HTMLLOADOPTION_FRAMELOAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"QueryOption failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"buf changed\0A\00", align 1
@HTMLLOADOPTION_CODEPAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"SetOption failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"unexpected buf\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HTMLLoadOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HTMLLoadOptions() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 3735928559, i64* %5, align 8
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %9 = or i32 %7, %8
  %10 = bitcast i32** %1 to i8**
  %11 = call i64 @CoCreateInstance(i32* @CLSID_HTMLLoadOptions, i32* null, i32 %9, i32* @IID_IHtmlLoadOptions, i8** %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @FAILED(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %0
  br label %226

22:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @HTMLLOADOPTION_FRAMELOAD, align 8
  %26 = add nsw i64 %25, 3
  %27 = icmp sle i64 %24, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  store i64 3735928559, i64* %3, align 8
  %29 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %30 = call i32 @memset(i32* %29, i32 221, i32 400)
  %31 = load i32*, i32** %1, align 8
  %32 = load i64, i64* %4, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @IHtmlLoadOptions_QueryOption(i32* %31, i32 %33, i32* null, i64* %3)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %3, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %3, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = icmp eq i32 %47, 221
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %28
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %23

54:                                               ; preds = %23
  store i64 3735928559, i64* %3, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %57 = call i64 @IHtmlLoadOptions_QueryOption(i32* %55, i32 %56, i32* null, i64* %3)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %3, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %3, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %71 = call i64 (i32*, i32, ...) @IHtmlLoadOptions_SetOption(i32* %69, i32 %70, i64* %5, i64 8)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %6, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  store i64 8, i64* %3, align 8
  %78 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %79 = call i32 @memset(i32* %78, i32 221, i32 400)
  %80 = load i32*, i32** %1, align 8
  %81 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %82 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %83 = call i64 @IHtmlLoadOptions_QueryOption(i32* %80, i32 %81, i32* %82, i64* %3)
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @S_OK, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i64, i64* %6, align 8
  %89 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  %90 = load i64, i64* %3, align 8
  %91 = icmp eq i64 %90, 8
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %3, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %96 = bitcast i32* %95 to i64*
  %97 = load i64, i64* %96, align 16
  %98 = load i64, i64* %5, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i64 7, i64* %3, align 8
  %102 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %103 = call i32 @memset(i32* %102, i32 221, i32 400)
  %104 = load i32*, i32** %1, align 8
  %105 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %106 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %107 = call i64 @IHtmlLoadOptions_QueryOption(i32* %104, i32 %105, i32* %106, i64* %3)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @E_FAIL, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %6, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = load i64, i64* %3, align 8
  %115 = icmp eq i64 %114, 8
  br i1 %115, label %120, label %116

116:                                              ; preds = %54
  %117 = load i64, i64* %3, align 8
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %54
  %121 = phi i1 [ true, %54 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = load i64, i64* %3, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  %125 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = icmp eq i32 %126, 221
  %128 = zext i1 %127 to i32
  %129 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i64 100, i64* %5, align 8
  %130 = load i32*, i32** %1, align 8
  %131 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %132 = call i64 (i32*, i32, ...) @IHtmlLoadOptions_SetOption(i32* %130, i32 %131, i64* %5, i32 0)
  store i64 %132, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %6, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %137)
  store i64 3735928559, i64* %3, align 8
  %139 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %140 = call i32 @memset(i32* %139, i32 221, i32 400)
  %141 = load i32*, i32** %1, align 8
  %142 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %143 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %144 = call i64 @IHtmlLoadOptions_QueryOption(i32* %141, i32 %142, i32* %143, i64* %3)
  store i64 %144, i64* %6, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* @S_OK, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %6, align 8
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* %3, align 8
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %3, align 8
  %155 = call i32 (i32, i8*, ...) @ok(i32 %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %154)
  %156 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = icmp eq i32 %157, 221
  %159 = zext i1 %158 to i32
  %160 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32*, i32** %1, align 8
  %162 = load i32, i32* @HTMLLOADOPTION_CODEPAGE, align 4
  %163 = call i64 (i32*, i32, ...) @IHtmlLoadOptions_SetOption(i32* %161, i32 %162, i8* null, i32 0)
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %6, align 8
  %165 = load i64, i64* @S_OK, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %6, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %168)
  %170 = load i32*, i32** %1, align 8
  %171 = call i64 (i32*, i32, ...) @IHtmlLoadOptions_SetOption(i32* %170, i32 1000, i64* %5, i64 8)
  store i64 %171, i64* %6, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load i64, i64* @S_OK, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %6, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %176)
  store i64 8, i64* %3, align 8
  %178 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %179 = call i32 @memset(i32* %178, i32 221, i32 400)
  %180 = load i32*, i32** %1, align 8
  %181 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %182 = call i64 @IHtmlLoadOptions_QueryOption(i32* %180, i32 1000, i32* %181, i64* %3)
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load i64, i64* @S_OK, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i64, i64* %6, align 8
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %187)
  %189 = load i64, i64* %3, align 8
  %190 = icmp eq i64 %189, 8
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %3, align 8
  %193 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %192)
  %194 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %195 = bitcast i32* %194 to i64*
  %196 = load i64, i64* %195, align 16
  %197 = load i64, i64* %5, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32*, i32** %1, align 8
  %202 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %203 = call i64 (i32*, i32, ...) @IHtmlLoadOptions_SetOption(i32* %201, i32 1000, i32* %202, i64 400)
  store i64 %203, i64* %6, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* @S_OK, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i64, i64* %6, align 8
  %209 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %208)
  store i64 3735928559, i64* %3, align 8
  %210 = load i32*, i32** %1, align 8
  %211 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 0
  %212 = call i64 @IHtmlLoadOptions_QueryOption(i32* %210, i32 1000, i32* %211, i64* %3)
  store i64 %212, i64* %6, align 8
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* @S_OK, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i64, i64* %6, align 8
  %218 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %217)
  %219 = load i64, i64* %3, align 8
  %220 = icmp eq i64 %219, 400
  %221 = zext i1 %220 to i32
  %222 = load i64, i64* %3, align 8
  %223 = call i32 (i32, i8*, ...) @ok(i32 %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %222)
  %224 = load i32*, i32** %1, align 8
  %225 = call i32 @IHtmlLoadOptions_Release(i32* %224)
  br label %226

226:                                              ; preds = %120, %21
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IHtmlLoadOptions_QueryOption(i32*, i32, i32*, i64*) #1

declare dso_local i64 @IHtmlLoadOptions_SetOption(i32*, i32, ...) #1

declare dso_local i32 @IHtmlLoadOptions_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

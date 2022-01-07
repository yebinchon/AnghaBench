; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmllocation.c_perform_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmllocation.c_perform_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.location_test = type { i32, i32 }

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: CreateBindCtx failed: 0x%08x\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: CreateURLMoniker failed: 0x%08x\0A\00", align 1
@CLSID_HTMLDocument = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IHTMLDocument2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: CoCreateInstance failed: 0x%08x\0A\00", align 1
@IID_IHTMLDocument6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"%s: Could not get IHTMLDocument6, probably too old IE. Requires IE 8+\0A\00", align 1
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"%s: IHTMlDocument2_QueryInterface failed: 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: IPersistMoniker_Load failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s: IHTMLDocument2_get_location failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.location_test*)* @perform_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_test(%struct.location_test* %0) #0 {
  %2 = alloca %struct.location_test*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.location_test* %0, %struct.location_test** %2, align 8
  %13 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = call i64 @CreateBindCtx(i32 0, i32** %6)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load %struct.location_test*, %struct.location_test** %2, align 8
  %23 = getelementptr inbounds %struct.location_test, %struct.location_test* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %211

31:                                               ; preds = %1
  %32 = load i32, i32* @CP_ACP, align 4
  %33 = load %struct.location_test*, %struct.location_test** %2, align 8
  %34 = getelementptr inbounds %struct.location_test, %struct.location_test* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nuw i64 4, %14
  %37 = udiv i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @MultiByteToWideChar(i32 %32, i32 0, i32 %35, i32 -1, i32* %16, i32 %38)
  %40 = call i64 @CreateURLMoniker(i32* null, i32* %16, i32** %7)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load %struct.location_test*, %struct.location_test** %2, align 8
  %46 = getelementptr inbounds %struct.location_test, %struct.location_test* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @FAILED(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %31
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @IBindCtx_Release(i32* %54)
  store i32 1, i32* %12, align 4
  br label %211

56:                                               ; preds = %31
  %57 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %58 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %59 = or i32 %57, %58
  %60 = bitcast i32** %9 to i8**
  %61 = call i64 @CoCreateInstance(i32* @CLSID_HTMLDocument, i32* null, i32 %59, i32* @IID_IHTMLDocument2, i8** %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.location_test*, %struct.location_test** %2, align 8
  %67 = getelementptr inbounds %struct.location_test, %struct.location_test* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @FAILED(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @IMoniker_Release(i32* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @IBindCtx_Release(i32* %77)
  store i32 1, i32* %12, align 4
  br label %211

79:                                               ; preds = %56
  %80 = load i32*, i32** %9, align 8
  %81 = bitcast i32** %10 to i8**
  %82 = call i64 @IHTMLDocument2_QueryInterface(i32* %80, i32* @IID_IHTMLDocument6, i8** %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @IHTMLDocument6_Release(i32* %87)
  br label %98

89:                                               ; preds = %79
  %90 = load %struct.location_test*, %struct.location_test** %2, align 8
  %91 = getelementptr inbounds %struct.location_test, %struct.location_test* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @win_skip(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @IMoniker_Release(i32* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @IBindCtx_Release(i32* %96)
  store i32 1, i32* %12, align 4
  br label %211

98:                                               ; preds = %86
  %99 = load i32*, i32** %9, align 8
  %100 = bitcast i32** %8 to i8**
  %101 = call i64 @IHTMLDocument2_QueryInterface(i32* %99, i32* @IID_IPersistMoniker, i8** %100)
  store i64 %101, i64* %5, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load %struct.location_test*, %struct.location_test** %2, align 8
  %107 = getelementptr inbounds %struct.location_test, %struct.location_test* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %108, i64 %109)
  %111 = load i64, i64* %5, align 8
  %112 = call i64 @FAILED(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %98
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @IHTMLDocument2_Release(i32* %115)
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @IMoniker_Release(i32* %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @IBindCtx_Release(i32* %119)
  store i32 1, i32* %12, align 4
  br label %211

121:                                              ; preds = %98
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* @FALSE, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %127 = load i32, i32* @STGM_READWRITE, align 4
  %128 = or i32 %126, %127
  %129 = call i64 @IPersistMoniker_Load(i32* %122, i32 %123, i32* %124, i32* %125, i32 %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load %struct.location_test*, %struct.location_test** %2, align 8
  %135 = getelementptr inbounds %struct.location_test, %struct.location_test* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %136, i64 %137)
  %139 = load i64, i64* %5, align 8
  %140 = call i64 @FAILED(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %121
  %143 = load i32*, i32** %8, align 8
  %144 = call i32 @IPersistMoniker_Release(i32* %143)
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @IHTMLDocument2_Release(i32* %145)
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @IMoniker_Release(i32* %147)
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @IBindCtx_Release(i32* %149)
  store i32 1, i32* %12, align 4
  br label %211

151:                                              ; preds = %121
  %152 = load i32*, i32** %9, align 8
  %153 = call i64 @IHTMLDocument2_get_location(i32* %152, i32** %11)
  store i64 %153, i64* %5, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* @S_OK, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load %struct.location_test*, %struct.location_test** %2, align 8
  %159 = getelementptr inbounds %struct.location_test, %struct.location_test* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %5, align 8
  %162 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %160, i64 %161)
  %163 = load i64, i64* %5, align 8
  %164 = call i64 @FAILED(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %151
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @IPersistMoniker_Release(i32* %167)
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @IHTMLDocument2_Release(i32* %169)
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @IMoniker_Release(i32* %171)
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @IBindCtx_Release(i32* %173)
  store i32 1, i32* %12, align 4
  br label %211

175:                                              ; preds = %151
  %176 = load i32*, i32** %11, align 8
  %177 = load %struct.location_test*, %struct.location_test** %2, align 8
  %178 = call i32 @test_href(i32* %176, %struct.location_test* %177)
  %179 = load i32*, i32** %11, align 8
  %180 = load %struct.location_test*, %struct.location_test** %2, align 8
  %181 = call i32 @test_protocol(i32* %179, %struct.location_test* %180)
  %182 = load i32*, i32** %11, align 8
  %183 = load %struct.location_test*, %struct.location_test** %2, align 8
  %184 = call i32 @test_host(i32* %182, %struct.location_test* %183)
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.location_test*, %struct.location_test** %2, align 8
  %188 = call i32 @test_hostname(i32* %185, i32* %186, %struct.location_test* %187)
  %189 = load i32*, i32** %11, align 8
  %190 = load %struct.location_test*, %struct.location_test** %2, align 8
  %191 = call i32 @test_port(i32* %189, %struct.location_test* %190)
  %192 = load i32*, i32** %11, align 8
  %193 = load %struct.location_test*, %struct.location_test** %2, align 8
  %194 = call i32 @test_pathname(i32* %192, %struct.location_test* %193)
  %195 = load i32*, i32** %11, align 8
  %196 = load %struct.location_test*, %struct.location_test** %2, align 8
  %197 = call i32 @test_search(i32* %195, %struct.location_test* %196)
  %198 = load i32*, i32** %11, align 8
  %199 = load %struct.location_test*, %struct.location_test** %2, align 8
  %200 = call i32 @test_hash(i32* %198, %struct.location_test* %199)
  %201 = load i32*, i32** %11, align 8
  %202 = call i32 @IHTMLLocation_Release(i32* %201)
  %203 = load i32*, i32** %8, align 8
  %204 = call i32 @IPersistMoniker_Release(i32* %203)
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 @IHTMLDocument2_Release(i32* %205)
  %207 = load i32*, i32** %7, align 8
  %208 = call i32 @IMoniker_Release(i32* %207)
  %209 = load i32*, i32** %6, align 8
  %210 = call i32 @IBindCtx_Release(i32* %209)
  store i32 0, i32* %12, align 4
  br label %211

211:                                              ; preds = %175, %166, %142, %114, %89, %74, %53, %30
  %212 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %12, align 4
  switch i32 %213, label %215 [
    i32 0, label %214
    i32 1, label %214
  ]

214:                                              ; preds = %211, %211
  ret void

215:                                              ; preds = %211
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateBindCtx(i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32, i64) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i64 @CreateURLMoniker(i32*, i32*, i32**) #2

declare dso_local i32 @IBindCtx_Release(i32*) #2

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IHTMLDocument6_Release(i32*) #2

declare dso_local i32 @win_skip(i8*, i32) #2

declare dso_local i32 @IHTMLDocument2_Release(i32*) #2

declare dso_local i64 @IPersistMoniker_Load(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @IPersistMoniker_Release(i32*) #2

declare dso_local i64 @IHTMLDocument2_get_location(i32*, i32**) #2

declare dso_local i32 @test_href(i32*, %struct.location_test*) #2

declare dso_local i32 @test_protocol(i32*, %struct.location_test*) #2

declare dso_local i32 @test_host(i32*, %struct.location_test*) #2

declare dso_local i32 @test_hostname(i32*, i32*, %struct.location_test*) #2

declare dso_local i32 @test_port(i32*, %struct.location_test*) #2

declare dso_local i32 @test_pathname(i32*, %struct.location_test*) #2

declare dso_local i32 @test_search(i32*, %struct.location_test*) #2

declare dso_local i32 @test_hash(i32*, %struct.location_test*) #2

declare dso_local i32 @IHTMLLocation_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_frame.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLWindow4 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not get IHTMLWindow4 interface: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"IHTMLWindow4_get_frameElement failed: 0x%08x\0A\00", align 1
@ET_FRAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IHTMLWindow2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Could not get IHTMLWindow2 interface: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"IHTMLWindow2_get_parent failed: 0x%08x\0A\00", align 1
@IID_IObjectIdentity = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Could not get IObjectIdentity interface: %08x\0A\00", align 1
@IID_ITravelLogClient = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"IID_ITravelLogClient not available\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Could not get ITravelLogClient interface: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"IsEqualObject returned: 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@obj_ident_test = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"IHTMLWindow2_get_document failed: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"frameset test\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"IHTMLWindow2_get_top failed: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @test_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_frame(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32** %10 to i8**
  %17 = call i64 @IDispatch_QueryInterface(i32* %15, i32* @IID_IHTMLWindow4, i8** %16)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %14, align 8
  %25 = call i64 @FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %203

28:                                               ; preds = %2
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @IHTMLWindow4_get_frameElement(i32* %29, i32** %11)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @IHTMLWindow4_Release(i32* %37)
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @FAILED(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %203

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @ET_FRAME, align 4
  %46 = call i32 @test_elem_type(i32* %44, i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @test_frame_doc(i32* %47, i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @test_elem_id(i32* %50, i8* %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @IHTMLFrameBase_Release(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = bitcast i32** %5 to i8**
  %57 = call i64 @IDispatch_QueryInterface(i32* %55, i32* @IID_IHTMLWindow2, i8** %56)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %14, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @FAILED(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %43
  br label %203

68:                                               ; preds = %43
  %69 = load i32*, i32** %5, align 8
  %70 = call i64 @IHTMLWindow2_get_parent(i32* %69, i32** %6)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @FAILED(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @IHTMLWindow2_Release(i32* %81)
  br label %203

83:                                               ; preds = %68
  %84 = load i32*, i32** %5, align 8
  %85 = bitcast i32** %12 to i8**
  %86 = call i64 @IHTMLWindow2_QueryInterface(i32* %84, i32* @IID_IObjectIdentity, i8** %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %14, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %91)
  %93 = load i32*, i32** %5, align 8
  %94 = bitcast i32** %13 to i8**
  %95 = call i64 @IHTMLWindow2_QueryInterface(i32* %93, i32* @IID_ITravelLogClient, i8** %94)
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* @E_NOINTERFACE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = call i32 @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %13, align 8
  br label %119

101:                                              ; preds = %83
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i64 %106)
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = call i64 @IObjectIdentity_IsEqualObject(i32* %108, i32* %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @S_OK, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %115)
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @ITravelLogClient_Release(i32* %117)
  br label %119

119:                                              ; preds = %101, %99
  %120 = load i32*, i32** %12, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = call i64 @IObjectIdentity_IsEqualObject(i32* %120, i32* %121)
  store i64 %122, i64* %14, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %14, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %12, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i64 @IObjectIdentity_IsEqualObject(i32* %129, i32* %130)
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @S_FALSE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %14, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %136)
  %138 = load i32*, i32** %12, align 8
  %139 = call i64 @IObjectIdentity_IsEqualObject(i32* %138, i32* @obj_ident_test)
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* @E_NOINTERFACE, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %144)
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @IObjectIdentity_Release(i32* %146)
  %148 = load i32*, i32** %6, align 8
  %149 = call i64 @IHTMLWindow2_get_document(i32* %148, i32** %8)
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* @S_OK, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %14, align 8
  %155 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %154)
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @IHTMLWindow2_Release(i32* %156)
  %158 = load i64, i64* %14, align 8
  %159 = call i64 @FAILED(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %119
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @IHTMLWindow2_Release(i32* %162)
  br label %203

164:                                              ; preds = %119
  %165 = load i32*, i32** %8, align 8
  %166 = call i32 @test_doc_title(i32* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @IHTMLDocument2_Release(i32* %167)
  %169 = load i32*, i32** %5, align 8
  %170 = call i64 @IHTMLWindow2_get_top(i32* %169, i32** %7)
  store i64 %170, i64* %14, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* @S_OK, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i64, i64* %14, align 8
  %176 = call i32 @ok(i32 %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i64 %175)
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @IHTMLWindow2_Release(i32* %177)
  %179 = load i64, i64* %14, align 8
  %180 = call i64 @FAILED(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %164
  br label %203

183:                                              ; preds = %164
  %184 = load i32*, i32** %7, align 8
  %185 = call i64 @IHTMLWindow2_get_document(i32* %184, i32** %9)
  store i64 %185, i64* %14, align 8
  %186 = load i64, i64* %14, align 8
  %187 = load i64, i64* @S_OK, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i64, i64* %14, align 8
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %190)
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @IHTMLWindow2_Release(i32* %192)
  %194 = load i64, i64* %14, align 8
  %195 = call i64 @FAILED(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %183
  br label %203

198:                                              ; preds = %183
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @test_doc_title(i32* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @IHTMLDocument2_Release(i32* %201)
  br label %203

203:                                              ; preds = %198, %197, %182, %161, %80, %67, %42, %27
  ret void
}

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IHTMLWindow4_get_frameElement(i32*, i32**) #1

declare dso_local i32 @IHTMLWindow4_Release(i32*) #1

declare dso_local i32 @test_elem_type(i32*, i32) #1

declare dso_local i32 @test_frame_doc(i32*, i32) #1

declare dso_local i32 @test_elem_id(i32*, i8*) #1

declare dso_local i32 @IHTMLFrameBase_Release(i32*) #1

declare dso_local i64 @IHTMLWindow2_get_parent(i32*, i32**) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i64 @IHTMLWindow2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @IObjectIdentity_IsEqualObject(i32*, i32*) #1

declare dso_local i32 @ITravelLogClient_Release(i32*) #1

declare dso_local i32 @IObjectIdentity_Release(i32*) #1

declare dso_local i64 @IHTMLWindow2_get_document(i32*, i32**) #1

declare dso_local i32 @test_doc_title(i32*, i8*) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

declare dso_local i64 @IHTMLWindow2_get_top(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

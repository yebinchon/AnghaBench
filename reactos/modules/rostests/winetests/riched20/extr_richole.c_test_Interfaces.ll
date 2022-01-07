; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_Interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_Interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Couldn't create window\0A\00", align 1
@EM_GETOLEINTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SendMessage\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"EM_GETOLEINTERFACE\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Should not return a new IRichEditOle interface\0A\00", align 1
@IID_ITextDocument = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"IRichEditOle_QueryInterface\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"ITextDocument_GetSelection: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@IID_ITextSelection = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"ITextSelection_QueryInterface\0A\00", align 1
@IID_ITextRange = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@IID_IOleClientSite = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@IID_IOleWindow = common dso_local global i32 0, align 4
@IID_IOleInPlaceSite = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"got wrong ref count: %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"ITextSelection after ITextDocument destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Interfaces() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %11 = call i32 @new_richedit(i32* null)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 @skip(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %187

16:                                               ; preds = %0
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @EM_GETOLEINTERFACE, align 4
  %19 = ptrtoint i32** %1 to i32
  %20 = call i32 @SendMessageA(i32 %17, i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @EXPECT_REF(i32* %27, i32 2)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @EM_GETOLEINTERFACE, align 4
  %31 = ptrtoint i32** %2 to i32
  %32 = call i32 @SendMessageA(i32 %29, i32 %30, i32 0, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %2, align 8
  %38 = load i32*, i32** %1, align 8
  %39 = icmp eq i32* %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @EXPECT_REF(i32* %42, i32 3)
  %44 = load i32*, i32** %1, align 8
  %45 = bitcast i32** %3 to i8**
  %46 = call i64 @IRichEditOle_QueryInterface(i32* %44, i32* @IID_ITextDocument, i8** %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @ITextDocument_GetSelection(i32* %56, i32** null)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @E_INVALIDARG, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @EXPECT_REF(i32* %64, i32 4)
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @ITextDocument_GetSelection(i32* %66, i32** %4)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %7, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @EXPECT_REF(i32* %74, i32 4)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @EXPECT_REF(i32* %76, i32 2)
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @ITextDocument_GetSelection(i32* %78, i32** %5)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %7, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = icmp eq i32* %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %90, i32* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @EXPECT_REF(i32* %93, i32 4)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @EXPECT_REF(i32* %95, i32 3)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @ITextSelection_Release(i32* %97)
  store i32* null, i32** %6, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = bitcast i32** %6 to i8**
  %101 = call i64 @ITextSelection_QueryInterface(i32* %99, i32* @IID_ITextSelection, i8** %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @S_OK, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %107 = load i32*, i32** %6, align 8
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @IUnknown_Release(i32* %111)
  store i32* null, i32** %6, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = bitcast i32** %6 to i8**
  %115 = call i64 @ITextSelection_QueryInterface(i32* %113, i32* @IID_ITextRange, i8** %114)
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32*, i32** %6, align 8
  %122 = icmp ne i32* %121, null
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @IUnknown_Release(i32* %125)
  store i32* null, i32** %6, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = bitcast i32** %6 to i8**
  %129 = call i64 @ITextSelection_QueryInterface(i32* %127, i32* @IID_IDispatch, i8** %128)
  store i64 %129, i64* %7, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @IUnknown_Release(i32* %139)
  store i32* null, i32** %6, align 8
  %141 = load i32*, i32** %1, align 8
  %142 = bitcast i32** %6 to i8**
  %143 = call i64 @IRichEditOle_QueryInterface(i32* %141, i32* @IID_IOleClientSite, i8** %142)
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* @E_NOINTERFACE, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  %149 = load i32*, i32** %1, align 8
  %150 = bitcast i32** %6 to i8**
  %151 = call i64 @IRichEditOle_QueryInterface(i32* %149, i32* @IID_IOleWindow, i8** %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* @E_NOINTERFACE, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  %157 = load i32*, i32** %1, align 8
  %158 = bitcast i32** %6 to i8**
  %159 = call i64 @IRichEditOle_QueryInterface(i32* %157, i32* @IID_IOleInPlaceSite, i8** %158)
  store i64 %159, i64* %7, align 8
  %160 = load i64, i64* %7, align 8
  %161 = load i64, i64* @E_NOINTERFACE, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @ITextDocument_Release(i32* %165)
  %167 = load i32*, i32** %1, align 8
  %168 = call i32 @IRichEditOle_Release(i32* %167)
  %169 = load i32*, i32** %1, align 8
  %170 = call i32 @IRichEditOle_Release(i32* %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 1
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %10, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @DestroyWindow(i32 %176)
  %178 = load i32*, i32** %4, align 8
  %179 = call i64 @ITextSelection_CanEdit(i32* %178, i32* null)
  store i64 %179, i64* %7, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* @CO_E_RELEASED, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @ITextSelection_Release(i32* %185)
  br label %187

187:                                              ; preds = %16, %14
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i64 @IRichEditOle_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @ITextDocument_GetSelection(i32*, i32**) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

declare dso_local i64 @ITextSelection_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @ITextDocument_Release(i32*) #1

declare dso_local i32 @IRichEditOle_Release(i32*) #1

declare dso_local i32 @DestroyWindow(i32) #1

declare dso_local i64 @ITextSelection_CanEdit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

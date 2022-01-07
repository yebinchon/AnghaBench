; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_test_invalid_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_autocomplete.c_test_invalid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_AutoComplete = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IAutoComplete = common dso_local global i32 0, align 4
@REGDB_E_CLASSNOTREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"CLSID_AutoComplete is not registered\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"no IID_IAutoComplete (0x%08x)\0A\00", align 1
@CLSID_ACLMulti = common dso_local global i32 0, align 4
@IID_IACList = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CLSID_ACLMulti is not registered\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"no IID_IACList (0x%08x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Some text\00", align 1
@hMainWnd = common dso_local global i32 0, align 4
@hinst = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Can't create edit control\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Init returned 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Expected AutoComplete source refcount to be 1, got %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@hEdit = common dso_local global i32* null, align 8
@E_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invalid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %2 to i8**
  %8 = call i32 @CoCreateInstance(i32* @CLSID_AutoComplete, i32* null, i32 %6, i32* @IID_IAutoComplete, i8** %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @REGDB_E_CLASSNOTREG, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %173

14:                                               ; preds = %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %22 = bitcast i32** %3 to i8**
  %23 = call i32 @CoCreateInstance(i32* @CLSID_ACLMulti, i32* null, i32 %21, i32* @IID_IACList, i8** %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @REGDB_E_CLASSNOTREG, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @IAutoComplete_Release(i32* %29)
  br label %173

31:                                               ; preds = %14
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @S_OK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @hMainWnd, align 4
  %39 = load i32, i32* @hinst, align 4
  %40 = call i32* @CreateWindowExA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 10, i32 10, i32 300, i32 300, i32 %38, i32* null, i32 %39, i32* null)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @IAutoComplete_Init(i32* %45, i32* null, i32* %46, i32* null, i32* null)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @E_INVALIDARG, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @S_OK, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @broken(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %51, %31
  %59 = phi i1 [ true, %31 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %1, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* @E_INVALIDARG, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @IUnknown_AddRef(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @IUnknown_Release(i32* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %66, %58
  %77 = load i32*, i32** %2, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @IAutoComplete_Init(i32* %77, i32* %78, i32* %79, i32* null, i32* null)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* @S_OK, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %1, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @IAutoComplete_Init(i32* %87, i32* null, i32* null, i32* null, i32* null)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @E_INVALIDARG, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %76
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @E_FAIL, align 4
  %95 = icmp eq i32 %93, %94
  br label %96

96:                                               ; preds = %92, %76
  %97 = phi i1 [ true, %76 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %1, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @IAutoComplete_Init(i32* %101, i32* null, i32* %102, i32* null, i32* null)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* @E_INVALIDARG, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @E_FAIL, align 4
  %110 = icmp eq i32 %108, %109
  br label %111

111:                                              ; preds = %107, %96
  %112 = phi i1 [ true, %96 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %1, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @IAutoComplete_Init(i32* %116, i32* %117, i32* null, i32* null, i32* null)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* @E_INVALIDARG, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* @E_FAIL, align 4
  %125 = icmp eq i32 %123, %124
  br label %126

126:                                              ; preds = %122, %111
  %127 = phi i1 [ true, %111 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = load i32, i32* %1, align 4
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  %131 = load i32*, i32** %2, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @IAutoComplete_Init(i32* %131, i32* %132, i32* %133, i32* null, i32* null)
  store i32 %134, i32* %1, align 4
  %135 = load i32, i32* %1, align 4
  %136 = load i32, i32* @E_FAIL, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %1, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %2, align 8
  %142 = load i32*, i32** @hEdit, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @IAutoComplete_Init(i32* %141, i32* %142, i32* %143, i32* null, i32* null)
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* %1, align 4
  %146 = load i32, i32* @E_FAIL, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %1, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @DestroyWindow(i32* %151)
  %153 = load i32*, i32** %2, align 8
  %154 = load i32*, i32** @hEdit, align 8
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @IAutoComplete_Init(i32* %153, i32* %154, i32* %155, i32* null, i32* null)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = load i32, i32* @E_UNEXPECTED, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %126
  %161 = load i32, i32* %1, align 4
  %162 = load i32, i32* @E_FAIL, align 4
  %163 = icmp eq i32 %161, %162
  br label %164

164:                                              ; preds = %160, %126
  %165 = phi i1 [ true, %126 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %1, align 4
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @IUnknown_Release(i32* %169)
  %171 = load i32*, i32** %2, align 8
  %172 = call i32 @IAutoComplete_Release(i32* %171)
  br label %173

173:                                              ; preds = %164, %27, %12
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IAutoComplete_Release(i32*) #1

declare dso_local i32* @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @IAutoComplete_Init(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

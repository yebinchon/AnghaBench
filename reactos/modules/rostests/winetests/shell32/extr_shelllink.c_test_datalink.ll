; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_datalink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shelllink.c_test_datalink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@test_datalink.lnk = internal constant [96 x i8] c"::{9db1186e-40df-11d1-aa8c-00c04fb67863}:26,!!gxsf(Ng]qF`H{LsACCESSFiles>plT]jI{jf(=1&L[-81-]::\00", align 16
@test_datalink.comp = internal constant [53 x i8] c"26,!!gxsf(Ng]qF`H{LsACCESSFiles>plT]jI{jf(=1&L[-81-]\00", align 16
@CLSID_ShellLink = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IShellLinkW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"CoCreateInstance failed (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no shelllink\0A\00", align 1
@_IID_IShellLinkDataList = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"IShellLinkW_QueryInterface failed (0x%08x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"no datalink interface\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"GetFlags failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"GetFlags returned wrong flags\0A\00", align 1
@EXP_DARWIN_ID_SIG = common dso_local global i64 0, align 8
@E_FAIL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"CopyDataBlock failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"should be null\0A\00", align 1
@pGetLongPathNameA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"SetPath with NULL parameter crashes on NT4\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"SetPath returned wrong error (0x%08x)\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"SetPath failed\0A\00", align 1
@SLDF_HAS_LOGO3ID = common dso_local global i32 0, align 4
@SLDF_HAS_DARWINID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"signature wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_datalink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_datalink() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %2 to i32*
  %8 = call i64 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %6, i32* @IID_IShellLinkW, i32* %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @E_NOINTERFACE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @broken(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %0
  %20 = phi i1 [ true, %0 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %3, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @win_skip(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %154

28:                                               ; preds = %19
  %29 = load i32*, i32** %2, align 8
  %30 = bitcast i32** %1 to i32*
  %31 = call i64 @IShellLinkW_QueryInterface(i32* %29, i32* @_IID_IShellLinkDataList, i32* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @E_NOINTERFACE, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @broken(i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %35, %28
  %43 = phi i1 [ true, %28 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %3, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = call i32 @win_skip(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @IShellLinkW_Release(i32* %51)
  br label %154

53:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  %54 = load i32*, i32** %1, align 8
  %55 = call i64 @IShellLinkDataList_GetFlags(i32* %54, i32* %4)
  store i64 %55, i64* %3, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_4__* inttoptr (i64 -1 to %struct.TYPE_4__*), %struct.TYPE_4__** %5, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = load i64, i64* @EXP_DARWIN_ID_SIG, align 8
  %67 = bitcast %struct.TYPE_4__** %5 to i32*
  %68 = call i64 @IShellLinkDataList_CopyDataBlock(i32* %65, i64 %66, i32* %67)
  store i64 %68, i64* %3, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i64, i64* @E_FAIL, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = icmp eq %struct.TYPE_4__* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %78 = load i32, i32* @pGetLongPathNameA, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %53
  %81 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  br label %91

82:                                               ; preds = %53
  %83 = load i32*, i32** %2, align 8
  %84 = call i64 @IShellLinkW_SetPath(i32* %83, i8* null)
  store i64 %84, i64* %3, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* @E_INVALIDARG, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %3, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %82, %80
  %92 = load i32*, i32** %2, align 8
  %93 = call i64 @IShellLinkW_SetPath(i32* %92, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @test_datalink.lnk, i64 0, i64 0))
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %99 = load i32*, i32** %1, align 8
  %100 = call i64 @IShellLinkDataList_GetFlags(i32* %99, i32* %4)
  store i64 %100, i64* %3, align 8
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @SLDF_HAS_LOGO3ID, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* @SLDF_HAS_DARWINID, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %114 = load i32*, i32** %1, align 8
  %115 = load i64, i64* @EXP_DARWIN_ID_SIG, align 8
  %116 = bitcast %struct.TYPE_4__** %5 to i32*
  %117 = call i64 @IShellLinkDataList_CopyDataBlock(i32* %114, i64 %115, i32* %116)
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %124 = icmp ne %struct.TYPE_4__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %91
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = bitcast %struct.TYPE_4__* %126 to %struct.TYPE_5__*
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EXP_DARWIN_ID_SIG, align 8
  %131 = icmp eq i64 %129, %130
  br label %132

132:                                              ; preds = %125, %91
  %133 = phi i1 [ false, %91 ], [ %131, %125 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = icmp ne %struct.TYPE_4__* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @lstrcmpW(i32 %141, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @test_datalink.comp, i64 0, i64 0))
  %143 = icmp eq i64 0, %142
  br label %144

144:                                              ; preds = %138, %132
  %145 = phi i1 [ false, %132 ], [ %143, %138 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = call i32 @LocalFree(%struct.TYPE_4__* %148)
  %150 = load i32*, i32** %1, align 8
  %151 = call i32 @IShellLinkDataList_Release(i32* %150)
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @IShellLinkW_Release(i32* %152)
  br label %154

154:                                              ; preds = %144, %49, %26
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i64 @IShellLinkW_QueryInterface(i32*, i32*, i32*) #1

declare dso_local i32 @IShellLinkW_Release(i32*) #1

declare dso_local i64 @IShellLinkDataList_GetFlags(i32*, i32*) #1

declare dso_local i64 @IShellLinkDataList_CopyDataBlock(i32*, i64, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @IShellLinkW_SetPath(i32*, i8*) #1

declare dso_local i64 @lstrcmpW(i32, i8*) #1

declare dso_local i32 @LocalFree(%struct.TYPE_4__*) #1

declare dso_local i32 @IShellLinkDataList_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

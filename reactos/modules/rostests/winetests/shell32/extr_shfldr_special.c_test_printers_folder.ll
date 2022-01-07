; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shfldr_special.c_test_printers_folder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shfldr_special.c_test_printers_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@CLSID_Printers = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IShellFolder2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to created IShellFolder2 for Printers folder\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@STRRET_WSTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@LVCFMT_LEFT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"got 0x%x\0A\00", align 1
@SHCOLSTATE_TYPE_INT = common dso_local global i32 0, align 4
@SHCOLSTATE_ONBYDEFAULT = common dso_local global i32 0, align 4
@SHCOLSTATE_TYPE_STR = common dso_local global i32 0, align 4
@IID_IPersistFolder2 = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@CSIDL_PRINTERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"expected same PIDL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_printers_folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_printers_folder() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @CoInitialize(i32* null)
  %10 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %11 = bitcast i32** %1 to i8**
  %12 = call i32 @CoCreateInstance(i32* @CLSID_Printers, i32* null, i32 %10, i32* @IID_IShellFolder2, i8** %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @S_OK, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 @win_skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @CoUninitialize()
  br label %210

19:                                               ; preds = %0
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @IShellFolder2_GetDetailsOf(i32* %20, i32* null, i32 6, %struct.TYPE_5__* %3)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @E_NOTIMPL, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @IShellFolder2_GetDefaultColumnState(i32* %28, i32 6, i32* %4)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @E_NOTIMPL, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @broken(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @E_INVALIDARG, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %19
  %41 = phi i1 [ true, %19 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @IShellFolder2_GetDetailsOf(i32* %47, i32* null, i32 0, %struct.TYPE_5__* %3)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @S_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @E_NOTIMPL, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %40
  %60 = phi i1 [ true, %40 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = call i64 (...) @SHELL_OsIsUnicode()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @SHFree(i32* %69)
  br label %71

71:                                               ; preds = %66, %59
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @S_OK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %149

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @STRRET_WSTR, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %145, %75
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 6
  br i1 %88, label %89, label %148

89:                                               ; preds = %86
  %90 = load i32*, i32** %1, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @IShellFolder2_GetDetailsOf(i32* %90, i32* null, i32 %91, %struct.TYPE_5__* %3)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @S_OK, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LVCFMT_LEFT, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  %107 = call i64 (...) @SHELL_OsIsUnicode()
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %89
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @SHFree(i32* %112)
  br label %114

114:                                              ; preds = %109, %89
  %115 = load i32*, i32** %1, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @IShellFolder2_GetDefaultColumnState(i32* %115, i32 %116, i32* %4)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @S_OK, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %135

126:                                              ; preds = %114
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @SHCOLSTATE_TYPE_INT, align 4
  %129 = load i32, i32* @SHCOLSTATE_ONBYDEFAULT, align 4
  %130 = or i32 %128, %129
  %131 = icmp eq i32 %127, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %144

135:                                              ; preds = %114
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @SHCOLSTATE_TYPE_STR, align 4
  %138 = load i32, i32* @SHCOLSTATE_ONBYDEFAULT, align 4
  %139 = or i32 %137, %138
  %140 = icmp eq i32 %136, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %4, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %135, %126
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %86

148:                                              ; preds = %86
  br label %149

149:                                              ; preds = %148, %71
  %150 = load i32*, i32** %1, align 8
  %151 = bitcast i32** %2 to i8**
  %152 = call i32 @IShellFolder2_QueryInterface(i32* %150, i32* @IID_IPersistFolder2, i8** %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @S_OK, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %7, align 4
  %158 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %159 = load i32*, i32** %2, align 8
  %160 = call i32 @IPersistFolder2_GetCurFolder(i32* %159, i32** %5)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @S_FALSE, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %7, align 4
  %166 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = icmp eq i32* %167, null
  %169 = zext i1 %168 to i32
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %170)
  %172 = load i32, i32* @CSIDL_PRINTERS, align 4
  %173 = call i32 @SHGetSpecialFolderLocation(i32* null, i32 %172, i32** %6)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @S_OK, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %7, align 4
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %178)
  %180 = load i32*, i32** %2, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @IPersistFolder2_Initialize(i32* %180, i32* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @S_OK, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %7, align 4
  %188 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  %189 = load i32*, i32** %2, align 8
  %190 = call i32 @IPersistFolder2_GetCurFolder(i32* %189, i32** %5)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @S_OK, align 4
  %193 = icmp eq i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load i32*, i32** %5, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @ILIsEqual(i32* %197, i32* %198)
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32*, i32** %2, align 8
  %202 = call i32 @IPersistFolder2_Release(i32* %201)
  %203 = load i32*, i32** %5, align 8
  %204 = call i32 @ILFree(i32* %203)
  %205 = load i32*, i32** %6, align 8
  %206 = call i32 @ILFree(i32* %205)
  %207 = load i32*, i32** %1, align 8
  %208 = call i32 @IShellFolder2_Release(i32* %207)
  %209 = call i32 (...) @CoUninitialize()
  br label %210

210:                                              ; preds = %149, %16
  ret void
}

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32 @IShellFolder2_GetDetailsOf(i32*, i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IShellFolder2_GetDefaultColumnState(i32*, i32, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @SHELL_OsIsUnicode(...) #1

declare dso_local i32 @SHFree(i32*) #1

declare dso_local i32 @IShellFolder2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IPersistFolder2_GetCurFolder(i32*, i32**) #1

declare dso_local i32 @SHGetSpecialFolderLocation(i32*, i32, i32**) #1

declare dso_local i32 @IPersistFolder2_Initialize(i32*, i32*) #1

declare dso_local i32 @ILIsEqual(i32*, i32*) #1

declare dso_local i32 @IPersistFolder2_Release(i32*) #1

declare dso_local i32 @ILFree(i32*) #1

declare dso_local i32 @IShellFolder2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

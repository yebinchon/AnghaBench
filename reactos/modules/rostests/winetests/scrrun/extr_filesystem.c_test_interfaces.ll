; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_interfaces.nonexistent_dirW = internal constant [15 x i8] c"c:\\Nonexistent\00", align 1
@test_interfaces.pathW = internal constant [5 x i8] c"path\00", align 1
@test_interfaces.file_kernel32W = internal constant [14 x i8] c"\\kernel32.dll\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@fs3 = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@CLSID_FileSystemObject = common dso_local global i32 0, align 4
@IID_IObjectWithSite = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"got 0x%08x, expected 0x%08x\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@VARIANT_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@E_POINTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Folder doesn't exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Folder exists\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_interfaces() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %17 = load i32, i32* @fs3, align 4
  %18 = bitcast i32** %2 to i8**
  %19 = call i32 @IFileSystem3_QueryInterface(i32 %17, i32* @IID_IDispatch, i8** %18)
  %20 = load i32, i32* @MAX_PATH, align 4
  %21 = call i32 @GetSystemDirectoryW(i8* %13, i32 %20)
  %22 = call i32 @lstrcpyW(i8* %16, i8* %13)
  %23 = call i32 @lstrcatW(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @test_interfaces.file_kernel32W, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @test_provideclassinfo(i32* %24, i32* @CLSID_FileSystemObject)
  %26 = load i32*, i32** %2, align 8
  %27 = bitcast i32** %4 to i8**
  %28 = call i64 @IDispatch_QueryInterface(i32* %26, i32* @IID_IObjectWithSite, i8** %27)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @E_NOINTERFACE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @E_NOINTERFACE, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = bitcast i32** %3 to i8**
  %38 = call i64 @IDispatch_QueryInterface(i32* %36, i32* @IID_IDispatchEx, i8** %37)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @E_NOINTERFACE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @E_NOINTERFACE, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i64, i64* @VARIANT_TRUE, align 8
  store i64 %46, i64* %5, align 8
  %47 = load i32, i32* @fs3, align 4
  %48 = call i64 @IFileSystem3_FileExists(i32 %47, i32* null, i64* %5)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @VARIANT_FALSE, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %5, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @fs3, align 4
  %63 = call i64 @IFileSystem3_FileExists(i32 %62, i32* null, i64* null)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* @E_POINTER, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @E_POINTER, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69)
  %71 = call i32* @SysAllocString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_interfaces.pathW, i64 0, i64 0))
  store i32* %71, i32** %6, align 8
  %72 = load i64, i64* @VARIANT_TRUE, align 8
  store i64 %72, i64* %5, align 8
  %73 = load i32, i32* @fs3, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i64 @IFileSystem3_FileExists(i32 %73, i32* %74, i64* %5)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %1, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @VARIANT_FALSE, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %5, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @SysFreeString(i32* %89)
  %91 = call i32* @SysAllocString(i8* %16)
  store i32* %91, i32** %6, align 8
  %92 = load i64, i64* @VARIANT_FALSE, align 8
  store i64 %92, i64* %5, align 8
  %93 = load i32, i32* @fs3, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i64 @IFileSystem3_FileExists(i32 %93, i32* %94, i64* %5)
  store i64 %95, i64* %1, align 8
  %96 = load i64, i64* %1, align 8
  %97 = load i64, i64* @S_OK, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %100, i64 %101)
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @VARIANT_TRUE, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %5, align 8
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @SysFreeString(i32* %109)
  %111 = call i32* @SysAllocString(i8* %13)
  store i32* %111, i32** %6, align 8
  %112 = load i64, i64* @VARIANT_TRUE, align 8
  store i64 %112, i64* %5, align 8
  %113 = load i32, i32* @fs3, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = call i64 @IFileSystem3_FileExists(i32 %113, i32* %114, i64* %5)
  store i64 %115, i64* %1, align 8
  %116 = load i64, i64* %1, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i64, i64* %1, align 8
  %121 = load i64, i64* @S_OK, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %120, i64 %121)
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @VARIANT_FALSE, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %5, align 8
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = call i32 @SysFreeString(i32* %129)
  %131 = load i32, i32* @fs3, align 4
  %132 = call i64 @IFileSystem3_FolderExists(i32 %131, i32* null, i64* null)
  store i64 %132, i64* %1, align 8
  %133 = load i64, i64* %1, align 8
  %134 = load i64, i64* @E_POINTER, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %1, align 8
  %138 = load i64, i64* @E_POINTER, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %137, i64 %138)
  %140 = call i32* @SysAllocString(i8* %13)
  store i32* %140, i32** %6, align 8
  %141 = load i32, i32* @fs3, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = call i64 @IFileSystem3_FolderExists(i32 %141, i32* %142, i64* %5)
  store i64 %143, i64* %1, align 8
  %144 = load i64, i64* %1, align 8
  %145 = load i64, i64* @S_OK, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %1, align 8
  %149 = load i64, i64* @S_OK, align 8
  %150 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %148, i64 %149)
  %151 = load i64, i64* %5, align 8
  %152 = load i64, i64* @VARIANT_TRUE, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32*, i32** %6, align 8
  %157 = call i32 @SysFreeString(i32* %156)
  %158 = call i32* @SysAllocString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_interfaces.nonexistent_dirW, i64 0, i64 0))
  store i32* %158, i32** %6, align 8
  %159 = load i32, i32* @fs3, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = call i64 @IFileSystem3_FolderExists(i32 %159, i32* %160, i64* %5)
  store i64 %161, i64* %1, align 8
  %162 = load i64, i64* %1, align 8
  %163 = load i64, i64* @S_OK, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i64, i64* %1, align 8
  %167 = load i64, i64* @S_OK, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %166, i64 %167)
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* @VARIANT_FALSE, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @SysFreeString(i32* %174)
  %176 = call i32* @SysAllocString(i8* %16)
  store i32* %176, i32** %6, align 8
  %177 = load i32, i32* @fs3, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = call i64 @IFileSystem3_FolderExists(i32 %177, i32* %178, i64* %5)
  store i64 %179, i64* %1, align 8
  %180 = load i64, i64* %1, align 8
  %181 = load i64, i64* @S_OK, align 8
  %182 = icmp eq i64 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i64, i64* %1, align 8
  %185 = load i64, i64* @S_OK, align 8
  %186 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %184, i64 %185)
  %187 = load i64, i64* %5, align 8
  %188 = load i64, i64* @VARIANT_FALSE, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 (i32, i8*, ...) @ok(i32 %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @SysFreeString(i32* %192)
  %194 = load i32*, i32** %2, align 8
  %195 = call i32 @IDispatch_Release(i32* %194)
  %196 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %196)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IFileSystem3_QueryInterface(i32, i32*, i8**) #2

declare dso_local i32 @GetSystemDirectoryW(i8*, i32) #2

declare dso_local i32 @lstrcpyW(i8*, i8*) #2

declare dso_local i32 @lstrcatW(i8*, i8*) #2

declare dso_local i32 @test_provideclassinfo(i32*, i32*) #2

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IFileSystem3_FileExists(i32, i32*, i64*) #2

declare dso_local i32* @SysAllocString(i8*) #2

declare dso_local i32 @SysFreeString(i32*) #2

declare dso_local i64 @IFileSystem3_FolderExists(i32, i32*, i64*) #2

declare dso_local i32 @IDispatch_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

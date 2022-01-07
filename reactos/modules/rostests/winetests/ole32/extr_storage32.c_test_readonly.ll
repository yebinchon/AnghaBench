; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_readonly.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_readonly.fileW = internal constant [9 x i8] c"winetest\00", align 1
@test_readonly.storageW = internal constant [8 x i8] c"storage\00", align 1
@test_readonly.streamW = internal constant [7 x i8] c"stream\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"should succeed, res=%x\0A\00", align 1
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STG_E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"should fail, res=%x\0A\00", align 1
@STG_E_FILEALREADYEXISTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_readonly() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @STGM_CREATE, align 4
  %7 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @STGM_READWRITE, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_readonly.fileW, i64 0, i64 0), i32 %10, i32 0, i32** %1)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @SUCCEEDED(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %0
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @STGM_CREATE, align 4
  %24 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @STGM_READWRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @IStorage_CreateStorage(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_readonly.storageW, i64 0, i64 0), i32 %27, i32 0, i32 0, i32** %2)
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @SUCCEEDED(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %21
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @STGM_CREATE, align 4
  %41 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @STGM_READWRITE, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @IStorage_CreateStream(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_readonly.streamW, i64 0, i64 0), i32 %44, i32 0, i32 0, i32** %4)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @SUCCEEDED(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %38
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @IStream_Release(i32* %56)
  br label %58

58:                                               ; preds = %55, %38
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @IStorage_Release(i32* %59)
  br label %61

61:                                               ; preds = %58, %21
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @IStorage_Release(i32* %62)
  br label %64

64:                                               ; preds = %61, %0
  %65 = load i32, i32* @STGM_TRANSACTED, align 4
  %66 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @STGM_READ, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @StgOpenStorage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_readonly.fileW, i64 0, i64 0), i32* null, i32 %69, i32* null, i32 0, i32** %1)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @SUCCEEDED(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %197

80:                                               ; preds = %64
  %81 = load i32*, i32** %1, align 8
  %82 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %83 = load i32, i32* @STGM_READ, align 4
  %84 = or i32 %82, %83
  %85 = call i64 @IStorage_OpenStorage(i32* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_readonly.storageW, i64 0, i64 0), i32* null, i32 %84, i32* null, i32 0, i32** %2)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @SUCCEEDED(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %194

95:                                               ; preds = %80
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* @STGM_CREATE, align 4
  %98 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @STGM_READ, align 4
  %101 = or i32 %99, %100
  %102 = call i64 @IStorage_CreateStream(i32* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_readonly.streamW, i64 0, i64 0), i32 %101, i32 0, i32 0, i32** %4)
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %107)
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @SUCCEEDED(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @IStream_Release(i32* %113)
  br label %115

115:                                              ; preds = %112, %95
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* @STGM_CREATE, align 4
  %118 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @STGM_READ, align 4
  %121 = or i32 %119, %120
  %122 = call i64 @IStorage_CreateStream(i32* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_readonly.storageW, i64 0, i64 0), i32 %121, i32 0, i32 0, i32** %4)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* %5, align 8
  %130 = call i64 @SUCCEEDED(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %115
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @IStream_Release(i32* %133)
  br label %135

135:                                              ; preds = %132, %115
  %136 = load i32*, i32** %2, align 8
  %137 = load i32, i32* @STGM_CREATE, align 4
  %138 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @STGM_READ, align 4
  %141 = or i32 %139, %140
  %142 = call i64 @IStorage_CreateStorage(i32* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_readonly.streamW, i64 0, i64 0), i32 %141, i32 0, i32 0, i32** %3)
  store i64 %142, i64* %5, align 8
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @STG_E_FILEALREADYEXISTS, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @ok(i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %147)
  %149 = load i64, i64* %5, align 8
  %150 = call i64 @SUCCEEDED(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %135
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @IStorage_Release(i32* %153)
  br label %155

155:                                              ; preds = %152, %135
  %156 = load i32*, i32** %2, align 8
  %157 = load i32, i32* @STGM_CREATE, align 4
  %158 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @STGM_READ, align 4
  %161 = or i32 %159, %160
  %162 = call i64 @IStorage_CreateStorage(i32* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_readonly.storageW, i64 0, i64 0), i32 %161, i32 0, i32 0, i32** %3)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %167)
  %169 = load i64, i64* %5, align 8
  %170 = call i64 @SUCCEEDED(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %155
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @IStorage_Release(i32* %173)
  br label %175

175:                                              ; preds = %172, %155
  %176 = load i32*, i32** %2, align 8
  %177 = call i64 @IStorage_DestroyElement(i32* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_readonly.streamW, i64 0, i64 0))
  store i64 %177, i64* %5, align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @ok(i32 %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %182)
  %184 = load i32*, i32** %2, align 8
  %185 = call i64 @IStorage_DestroyElement(i32* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_readonly.storageW, i64 0, i64 0))
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %188 = icmp eq i64 %186, %187
  %189 = zext i1 %188 to i32
  %190 = load i64, i64* %5, align 8
  %191 = call i32 @ok(i32 %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %190)
  %192 = load i32*, i32** %2, align 8
  %193 = call i32 @IStorage_Release(i32* %192)
  br label %194

194:                                              ; preds = %175, %80
  %195 = load i32*, i32** %1, align 8
  %196 = call i32 @IStorage_Release(i32* %195)
  br label %197

197:                                              ; preds = %194, %64
  %198 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @StgCreateDocfile(i8*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @StgOpenStorage(i8*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i8*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @IStorage_DestroyElement(i32*, i8*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

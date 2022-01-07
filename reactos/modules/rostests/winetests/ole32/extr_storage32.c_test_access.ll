; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_access.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_access.fileW = internal constant [9 x i8] c"winetest\00", align 1
@test_access.fileA = internal constant [9 x i8] c"winetest\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@create = common dso_local global i32 0, align 4
@STGC_DEFAULT = common dso_local global i32 0, align 4
@create_commit = common dso_local global i32 0, align 4
@create_close = common dso_local global i32 0, align 4
@STGM_DIRECT = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_NONE = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_READ = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@STGM_DIRECT_SWMR = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STG_E_INVALIDFLAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_access() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @STGM_CREATE, align 4
  %4 = load i32, i32* @STGM_READWRITE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @STGM_TRANSACTED, align 4
  %9 = or i32 %7, %8
  %10 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32 %9, i32 0, i32** %1)
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @create, align 4
  %18 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @STGC_DEFAULT, align 4
  %21 = call i64 @IStorage_Commit(i32* %19, i32 %20)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @create_commit, align 4
  %29 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @IStorage_Release(i32* %30)
  %32 = load i32, i32* @create_close, align 4
  %33 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %32)
  %34 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0))
  %35 = load i32, i32* @STGM_CREATE, align 4
  %36 = load i32, i32* @STGM_READWRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @STGM_DIRECT, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32 %41, i32 0, i32** %1)
  store i64 %42, i64* %2, align 8
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @create, align 4
  %50 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = load i32, i32* @STGC_DEFAULT, align 4
  %53 = call i64 @IStorage_Commit(i32* %51, i32 %52)
  store i64 %53, i64* %2, align 8
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @create_commit, align 4
  %61 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @IStorage_Release(i32* %62)
  %64 = load i32, i32* @create_close, align 4
  %65 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %64)
  %66 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0))
  %67 = load i32, i32* @STGM_CREATE, align 4
  %68 = load i32, i32* @STGM_READWRITE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @STGM_TRANSACTED, align 4
  %73 = or i32 %71, %72
  %74 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32 %73, i32 0, i32** %1)
  store i64 %74, i64* %2, align 8
  %75 = load i64, i64* %2, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %2, align 8
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @create, align 4
  %82 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = load i32, i32* @STGC_DEFAULT, align 4
  %85 = call i64 @IStorage_Commit(i32* %83, i32 %84)
  store i64 %85, i64* %2, align 8
  %86 = load i64, i64* %2, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %2, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* @create_commit, align 4
  %93 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @IStorage_Release(i32* %94)
  %96 = load i32, i32* @create_close, align 4
  %97 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %96)
  %98 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0))
  %99 = load i32, i32* @STGM_CREATE, align 4
  %100 = load i32, i32* @STGM_READWRITE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @STGM_SHARE_DENY_READ, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @STGM_TRANSACTED, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32 %105, i32 0, i32** %1)
  store i64 %106, i64* %2, align 8
  %107 = load i64, i64* %2, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %2, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* @create, align 4
  %114 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %1, align 8
  %116 = load i32, i32* @STGC_DEFAULT, align 4
  %117 = call i64 @IStorage_Commit(i32* %115, i32 %116)
  store i64 %117, i64* %2, align 8
  %118 = load i64, i64* %2, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %2, align 8
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %122)
  %124 = load i32, i32* @create_commit, align 4
  %125 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @IStorage_Release(i32* %126)
  %128 = load i32, i32* @create_close, align 4
  %129 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %128)
  %130 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0))
  %131 = load i32, i32* @STGM_CREATE, align 4
  %132 = load i32, i32* @STGM_READWRITE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @STGM_TRANSACTED, align 4
  %137 = or i32 %135, %136
  %138 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32 %137, i32 0, i32** %1)
  store i64 %138, i64* %2, align 8
  %139 = load i64, i64* %2, align 8
  %140 = load i64, i64* @S_OK, align 8
  %141 = icmp eq i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i64, i64* %2, align 8
  %144 = call i32 @ok(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* @create, align 4
  %146 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %1, align 8
  %148 = load i32, i32* @STGC_DEFAULT, align 4
  %149 = call i64 @IStorage_Commit(i32* %147, i32 %148)
  store i64 %149, i64* %2, align 8
  %150 = load i64, i64* %2, align 8
  %151 = load i64, i64* @S_OK, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %2, align 8
  %155 = call i32 @ok(i32 %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %154)
  %156 = load i32, i32* @create_commit, align 4
  %157 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %156)
  %158 = load i32*, i32** %1, align 8
  %159 = call i32 @IStorage_Release(i32* %158)
  %160 = load i32, i32* @create_close, align 4
  %161 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %160)
  %162 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0))
  %163 = load i32, i32* @STGM_CREATE, align 4
  %164 = load i32, i32* @STGM_READWRITE, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @STGM_TRANSACTED, align 4
  %169 = or i32 %167, %168
  %170 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32 %169, i32 0, i32** %1)
  store i64 %170, i64* %2, align 8
  %171 = load i64, i64* %2, align 8
  %172 = load i64, i64* @S_OK, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i64, i64* %2, align 8
  %176 = call i32 @ok(i32 %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %175)
  %177 = load i32*, i32** %1, align 8
  %178 = call i32 @IStorage_Release(i32* %177)
  %179 = load i32, i32* @STGM_DIRECT_SWMR, align 4
  %180 = load i32, i32* @STGM_READ, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @STGM_SHARE_DENY_NONE, align 4
  %183 = or i32 %181, %182
  %184 = call i64 @StgOpenStorage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileW, i64 0, i64 0), i32* null, i32 %183, i32* null, i32 0, i32** %1)
  store i64 %184, i64* %2, align 8
  %185 = load i64, i64* %2, align 8
  %186 = load i64, i64* @S_OK, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %195, label %188

188:                                              ; preds = %0
  %189 = load i64, i64* %2, align 8
  %190 = load i64, i64* @STG_E_INVALIDFLAG, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i64 @broken(i32 %192)
  %194 = icmp ne i64 %193, 0
  br label %195

195:                                              ; preds = %188, %0
  %196 = phi i1 [ true, %0 ], [ %194, %188 ]
  %197 = zext i1 %196 to i32
  %198 = load i64, i64* %2, align 8
  %199 = call i32 @ok(i32 %197, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %198)
  %200 = load i64, i64* %2, align 8
  %201 = load i64, i64* @S_OK, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %212

204:                                              ; preds = %195
  %205 = load i32, i32* @create, align 4
  %206 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %1, align 8
  %208 = call i32 @IStorage_Release(i32* %207)
  %209 = load i32, i32* @create_close, align 4
  %210 = call i32 @test_file_access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0), i32 %209)
  %211 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_access.fileA, i64 0, i64 0))
  br label %212

212:                                              ; preds = %204, %203
  ret void
}

declare dso_local i64 @StgCreateDocfile(i8*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @test_file_access(i8*, i32) #1

declare dso_local i64 @IStorage_Commit(i32*, i32) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @DeleteFileA(i8*) #1

declare dso_local i64 @StgOpenStorage(i8*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

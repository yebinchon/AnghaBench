; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_DriveExists.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_DriveExists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driveexists_test = type { i8*, i32, i64 }

@driveexiststestdata = common dso_local global %struct.driveexists_test* null, align 8
@__const.test_DriveExists.root = private unnamed_addr constant [4 x i8] c"?:\\\00", align 1
@fs3 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@VARIANT_TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@VARIANT_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"No drive with type 0x%x found, skipping test %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"got 0x%08x for drive spec %s (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"got %d, expected %d for drive spec %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DriveExists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DriveExists() #0 {
  %1 = alloca %struct.driveexists_test*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = load %struct.driveexists_test*, %struct.driveexists_test** @driveexiststestdata, align 8
  store %struct.driveexists_test* %6, %struct.driveexists_test** %1, align 8
  %7 = bitcast [4 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_DriveExists.root, i32 0, i32 0), i64 4, i1 false)
  %8 = load i32, i32* @fs3, align 4
  %9 = call i64 @IFileSystem3_DriveExists(i32 %8, i8* null, i64* null)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @E_POINTER, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %2, align 8
  %15 = call i32 (i32, i8*, i64, ...) @ok(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* @VARIANT_TRUE, align 8
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @fs3, align 4
  %18 = call i64 @IFileSystem3_DriveExists(i32 %17, i8* null, i64* %3)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %2, align 8
  %24 = call i32 (i32, i8*, i64, ...) @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @VARIANT_FALSE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %3, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ok(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %32 = call i8* @SysAllocString(i8* %31)
  store i8* %32, i8** %4, align 8
  %33 = load i32, i32* @fs3, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @IFileSystem3_DriveExists(i32 %33, i8* %34, i64* null)
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @E_POINTER, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %2, align 8
  %41 = call i32 (i32, i8*, i64, ...) @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @SysFreeString(i8* %42)
  br label %44

44:                                               ; preds = %194, %0
  %45 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %46 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %197

50:                                               ; preds = %44
  %51 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %52 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @SysAllocString(i8* %53)
  store i8* %54, i8** %4, align 8
  %55 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %56 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %148

59:                                               ; preds = %50
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8 65, i8* %60, align 1
  br label %61

61:                                               ; preds = %75, %59
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 90
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %68 = call i32 @GetDriveTypeW(i8* %67)
  %69 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %70 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %79

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = add i8 %77, 1
  store i8 %78, i8* %76, align 1
  br label %61

79:                                               ; preds = %73, %61
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sgt i32 %82, 90
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %86 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %89 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @wine_dbgstr_w(i8* %90)
  %92 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @SysFreeString(i8* %93)
  br label %194

95:                                               ; preds = %79
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8 %97, i8* %99, align 1
  %100 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %101 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VARIANT_TRUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i64, i64* @VARIANT_FALSE, align 8
  br label %109

107:                                              ; preds = %95
  %108 = load i64, i64* @VARIANT_TRUE, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  store i64 %110, i64* %3, align 8
  %111 = load i32, i32* @fs3, align 4
  %112 = load i8*, i8** %4, align 8
  %113 = call i64 @IFileSystem3_DriveExists(i32 %111, i8* %112, i64* %3)
  store i64 %113, i64* %2, align 8
  %114 = load i64, i64* %2, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %2, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = call i32 @wine_dbgstr_w(i8* %119)
  %121 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %122 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @wine_dbgstr_w(i8* %123)
  %125 = call i32 (i32, i8*, i64, ...) @ok(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %118, i32 %120, i32 %124)
  %126 = load i64, i64* %3, align 8
  %127 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %128 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  %131 = zext i1 %130 to i32
  %132 = load i64, i64* %3, align 8
  %133 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %134 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @wine_dbgstr_w(i8* %136)
  %138 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %139 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @wine_dbgstr_w(i8* %140)
  %142 = call i32 (i32, i8*, i64, ...) @ok(i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %132, i64 %135, i32 %137, i32 %141)
  %143 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = call signext i8 @tolower(i8 signext %144)
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  store i8 %145, i8* %147, align 1
  br label %148

148:                                              ; preds = %109, %50
  %149 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %150 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @VARIANT_TRUE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i64, i64* @VARIANT_FALSE, align 8
  br label %158

156:                                              ; preds = %148
  %157 = load i64, i64* @VARIANT_TRUE, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i64 [ %155, %154 ], [ %157, %156 ]
  store i64 %159, i64* %3, align 8
  %160 = load i32, i32* @fs3, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = call i64 @IFileSystem3_DriveExists(i32 %160, i8* %161, i64* %3)
  store i64 %162, i64* %2, align 8
  %163 = load i64, i64* %2, align 8
  %164 = load i64, i64* @S_OK, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %2, align 8
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @wine_dbgstr_w(i8* %168)
  %170 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %171 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @wine_dbgstr_w(i8* %172)
  %174 = call i32 (i32, i8*, i64, ...) @ok(i32 %166, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %167, i32 %169, i32 %173)
  %175 = load i64, i64* %3, align 8
  %176 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %177 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  %180 = zext i1 %179 to i32
  %181 = load i64, i64* %3, align 8
  %182 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %183 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 @wine_dbgstr_w(i8* %185)
  %187 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %188 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @wine_dbgstr_w(i8* %189)
  %191 = call i32 (i32, i8*, i64, ...) @ok(i32 %180, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %181, i64 %184, i32 %186, i32 %190)
  %192 = load i8*, i8** %4, align 8
  %193 = call i32 @SysFreeString(i8* %192)
  br label %194

194:                                              ; preds = %158, %84
  %195 = load %struct.driveexists_test*, %struct.driveexists_test** %1, align 8
  %196 = getelementptr inbounds %struct.driveexists_test, %struct.driveexists_test* %195, i32 1
  store %struct.driveexists_test* %196, %struct.driveexists_test** %1, align 8
  br label %44

197:                                              ; preds = %44
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IFileSystem3_DriveExists(i32, i8*, i64*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i8* @SysAllocString(i8*) #2

declare dso_local i32 @SysFreeString(i8*) #2

declare dso_local i32 @GetDriveTypeW(i8*) #2

declare dso_local i32 @skip(i8*, i32, i32) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local signext i8 @tolower(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

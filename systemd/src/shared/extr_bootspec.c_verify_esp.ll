; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_verify_esp.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bootspec.c_verify_esp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"SYSTEMD_RELAX_ESP_CHECKS\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to check file system type of \22%s\22: %m\00", align 1
@MSDOS_SUPER_MAGIC = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"File system \22%s\22 is not a FAT EFI System Partition (ESP) file system.\00", align 1
@SD_ID128_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i64*, i64*, i64*, i32*)* @verify_esp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_esp(i8* %0, i32 %1, i32 %2, i64* %3, i64* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.statfs, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = call i64 @getenv_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %81, label %27

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @statfs(i8* %28, %struct.statfs* %19)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EACCES, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %34
  %46 = load i32, i32* @LOG_DEBUG, align 4
  br label %49

47:                                               ; preds = %41, %38
  %48 = load i32, i32* @LOG_ERR, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i64, i64* @errno, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @log_full_errno(i32 %50, i64 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 %53, i32* %8, align 4
  br label %138

54:                                               ; preds = %27
  %55 = getelementptr inbounds %struct.statfs, %struct.statfs* %19, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MSDOS_SUPER_MAGIC, align 4
  %58 = call i32 @F_TYPE_EQUAL(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_DEBUG, align 4
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @LOG_ERR, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @EADDRNOTAVAIL, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ENODEV, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i64 @SYNTHETIC_ERRNO(i32 %76)
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @log_full_errno(i32 %68, i64 %77, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  store i32 %79, i32* %8, align 4
  br label %138

80:                                               ; preds = %54
  br label %81

81:                                               ; preds = %80, %7
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @verify_fsroot_dir(i8* %82, i32 %83, i32 %84, i32* %17)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %8, align 4
  br label %138

90:                                               ; preds = %81
  %91 = call i64 (...) @detect_container()
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90
  br label %116

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i64*, i64** %12, align 8
  %104 = load i64*, i64** %13, align 8
  %105 = load i64*, i64** %14, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @verify_esp_udev(i32 %101, i32 %102, i64* %103, i64* %104, i64* %105, i32* %106)
  store i32 %107, i32* %8, align 4
  br label %138

108:                                              ; preds = %97
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i64*, i64** %12, align 8
  %112 = load i64*, i64** %13, align 8
  %113 = load i64*, i64** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @verify_esp_blkid(i32 %109, i32 %110, i64* %111, i64* %112, i64* %113, i32* %114)
  store i32 %115, i32* %8, align 4
  br label %138

116:                                              ; preds = %96
  %117 = load i64*, i64** %12, align 8
  %118 = icmp ne i64* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i64*, i64** %12, align 8
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i64*, i64** %13, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64*, i64** %13, align 8
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i64*, i64** %14, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i64*, i64** %14, align 8
  store i64 0, i64* %130, align 8
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32*, i32** %15, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* @SD_ID128_NULL, align 4
  %136 = load i32*, i32** %15, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %131
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %137, %108, %100, %88, %75, %49
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @getenv_bool(i8*) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @log_full_errno(i32, i64, i8*, i8*) #1

declare dso_local i32 @F_TYPE_EQUAL(i32, i32) #1

declare dso_local i64 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @verify_fsroot_dir(i8*, i32, i32, i32*) #1

declare dso_local i64 @detect_container(...) #1

declare dso_local i32 @verify_esp_udev(i32, i32, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @verify_esp_blkid(i32, i32, i64*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

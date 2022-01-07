; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_rename_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_rename_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [30 x i8] c"Cannot rename FAT32 root dir\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"New name: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@FAT_NO_83NAME = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@MSDOS_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @rename_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_file(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [46 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %146

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %145
  %14 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fflush(i32 %15)
  %17 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  %18 = load i32, i32* @stdin, align 4
  %19 = call i64 @fgets(i8* %17, i32 45, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %145

21:                                               ; preds = %13
  %22 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  %23 = call i64 @strchr(i8* %22, i8 signext 10)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  %30 = call i64 @strrchr(i8* %29, i32 0)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %51, %28
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  %35 = icmp uge i8* %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 9
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ true, %36 ], [ %45, %41 ]
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi i1 [ false, %32 ], [ %47, %46 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %4, align 8
  br label %32

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 0, i8* %56, align 1
  %57 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  store i8* %57, i8** %4, align 8
  br label %58

58:                                               ; preds = %71, %54
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 9
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ true, %58 ], [ %67, %63 ]
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %58

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i64 @file_cvt(i8* %75, %struct.TYPE_6__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %74
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FAT_NO_83NAME, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %82
  %91 = load i32, i32* @FAT_NO_83NAME, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @ATTR_DIR, align 4
  %99 = load i32, i32* @ATTR_VOLUME, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* @MSDOS_NAME, align 8
  %111 = add nsw i64 %110, 2
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = call i32 @fs_write(i32 %109, i64 %111, %struct.TYPE_6__* %113)
  br label %125

115:                                              ; preds = %82
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* @MSDOS_NAME, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = call i32 @fs_write(i32 %118, i64 %119, %struct.TYPE_6__* %123)
  br label %125

125:                                              ; preds = %115, %90
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = bitcast %struct.TYPE_6__* %140 to i8*
  %142 = call i32 @lfn_fix_checksum(i32 %133, i32 %136, i8* %141)
  br label %143

143:                                              ; preds = %130, %125
  br label %146

144:                                              ; preds = %74
  br label %145

145:                                              ; preds = %144, %13
  br label %13

146:                                              ; preds = %143, %10
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strrchr(i8*, i32) #1

declare dso_local i64 @file_cvt(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @fs_write(i32, i64, %struct.TYPE_6__*) #1

declare dso_local i32 @lfn_fix_checksum(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

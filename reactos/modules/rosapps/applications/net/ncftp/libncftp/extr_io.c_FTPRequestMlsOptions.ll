; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPRequestMlsOptions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_io.c_FTPRequestMlsOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@kPreferredMlsOpts = common dso_local global i32 0, align 4
@kMlsOptType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"type;\00", align 1
@kMlsOptSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"size;\00", align 1
@kMlsOptModify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"modify;\00", align 1
@kMlsOptUNIXmode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"UNIX.mode;\00", align 1
@kMlsOptPerm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"perm;\00", align 1
@kMlsOptUNIXowner = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"UNIX.owner;\00", align 1
@kMlsOptUNIXuid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"UNIX.uid;\00", align 1
@kMlsOptUNIXgroup = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"UNIX.group;\00", align 1
@kMlsOptUNIXgid = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"UNIX.gid;\00", align 1
@kMlsOptUnique = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"unique;\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"OPTS MLST %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @FTPRequestMlsOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FTPRequestMlsOptions(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %119

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @kPreferredMlsOpts, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @kMlsOptType, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %25 = call i32 @STRNCAT(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %10
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @kMlsOptSize, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %33 = call i32 @STRNCAT(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @kMlsOptModify, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %41 = call i32 @STRNCAT(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @kMlsOptUNIXmode, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %49 = call i32 @STRNCAT(i8* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @kMlsOptPerm, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %57 = call i32 @STRNCAT(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @kMlsOptUNIXowner, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %65 = call i32 @STRNCAT(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @kMlsOptUNIXuid, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %73 = call i32 @STRNCAT(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @kMlsOptUNIXgroup, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %81 = call i32 @STRNCAT(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @kMlsOptUNIXgid, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %89 = call i32 @STRNCAT(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @kMlsOptUnique, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %97 = call i32 @STRNCAT(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %100 = call i64 @strlen(i8* %99)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i64, i64* %5, align 8
  %105 = sub i64 %104, 1
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 59
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i64, i64* %5, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %112
  store i8 0, i8* %113, align 1
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %117 = call i32 @FTPCmd(%struct.TYPE_4__* %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %114, %98
  br label %119

119:                                              ; preds = %118, %1
  ret void
}

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @FTPCmd(%struct.TYPE_4__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

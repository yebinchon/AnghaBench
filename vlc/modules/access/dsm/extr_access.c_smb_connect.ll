; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_smb_connect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_access.c_smb_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@DSM_SUCCESS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SMB_MOD_RO = common dso_local global i32 0, align 4
@DSM_ERROR_NT = common dso_local global i32 0, align 4
@NT_STATUS_ACCESS_DENIED = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i8*, i8*)* @smb_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_connect(%struct.TYPE_4__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @smb_session_set_creds(i32 %17, i8* %18, i8* %19, i8* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @smb_session_login(i32 %24)
  %26 = load i32, i32* @DSM_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @EACCES, align 4
  store i32 %29, i32* %5, align 4
  br label %86

30:                                               ; preds = %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %86

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = call i32 @smb_tree_connect(i32 %39, i32 %42, i32* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DSM_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %69

50:                                               ; preds = %36
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SMB_MOD_RO, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = call i32 @smb_fopen(i32 %53, i32 %56, i32 %59, i32 %60, i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @DSM_SUCCESS, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %69

68:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %86

69:                                               ; preds = %67, %49
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @DSM_ERROR_NT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @smb_session_get_nt_status(i32 %76)
  %78 = load i64, i64* @NT_STATUS_ACCESS_DENIED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @EACCES, align 4
  br label %84

82:                                               ; preds = %73, %69
  %83 = load i32, i32* @ENOENT, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %68, %35, %28
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @smb_session_set_creds(i32, i8*, i8*, i8*) #1

declare dso_local i32 @smb_session_login(i32) #1

declare dso_local i32 @smb_tree_connect(i32, i32, i32*) #1

declare dso_local i32 @smb_fopen(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @smb_session_get_nt_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

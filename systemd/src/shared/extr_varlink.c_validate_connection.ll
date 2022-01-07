; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_validate_connection.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_varlink.c_validate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i64, i64, i32, i32, i32 }

@VARLINK_SERVER_ROOT_ONLY = common dso_local global i32 0, align 4
@VARLINK_SERVER_MYSELF_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unprivileged client attempted connection, refusing.\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Connection limit of %u reached, refusing.\00", align 1
@VARLINK_SERVER_ACCOUNT_UID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Client with invalid UID attempted connection, refusing.\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Per-UID connection limit of %u reached, refusing.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*)* @validate_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_connection(%struct.ucred* %0, %struct.ucred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.ucred* %1, %struct.ucred** %5, align 8
  store i32 -1, i32* %6, align 4
  %8 = load %struct.ucred*, %struct.ucred** %4, align 8
  %9 = call i32 @assert(%struct.ucred* %8)
  %10 = load %struct.ucred*, %struct.ucred** %5, align 8
  %11 = call i32 @assert(%struct.ucred* %10)
  %12 = load %struct.ucred*, %struct.ucred** %4, align 8
  %13 = getelementptr inbounds %struct.ucred, %struct.ucred* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @VARLINK_SERVER_ROOT_ONLY, align 4
  %16 = call i64 @FLAGS_SET(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.ucred*, %struct.ucred** %5, align 8
  %20 = getelementptr inbounds %struct.ucred, %struct.ucred* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.ucred*, %struct.ucred** %4, align 8
  %26 = getelementptr inbounds %struct.ucred, %struct.ucred* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VARLINK_SERVER_MYSELF_ONLY, align 4
  %29 = call i64 @FLAGS_SET(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.ucred*, %struct.ucred** %5, align 8
  %36 = getelementptr inbounds %struct.ucred, %struct.ucred* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 (...) @getuid()
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ true, %31 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %24
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.ucred*, %struct.ucred** %4, align 8
  %48 = call i32 (%struct.ucred*, i8*, ...) @varlink_server_log(%struct.ucred* %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %102

49:                                               ; preds = %43
  %50 = load %struct.ucred*, %struct.ucred** %4, align 8
  %51 = getelementptr inbounds %struct.ucred, %struct.ucred* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ucred*, %struct.ucred** %4, align 8
  %54 = getelementptr inbounds %struct.ucred, %struct.ucred* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.ucred*, %struct.ucred** %4, align 8
  %59 = load %struct.ucred*, %struct.ucred** %4, align 8
  %60 = getelementptr inbounds %struct.ucred, %struct.ucred* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.ucred*, i8*, ...) @varlink_server_log(%struct.ucred* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  store i32 0, i32* %3, align 4
  br label %102

63:                                               ; preds = %49
  %64 = load %struct.ucred*, %struct.ucred** %4, align 8
  %65 = getelementptr inbounds %struct.ucred, %struct.ucred* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VARLINK_SERVER_ACCOUNT_UID, align 4
  %68 = call i64 @FLAGS_SET(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %63
  %71 = load %struct.ucred*, %struct.ucred** %5, align 8
  %72 = getelementptr inbounds %struct.ucred, %struct.ucred* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @uid_is_valid(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load %struct.ucred*, %struct.ucred** %4, align 8
  %78 = call i32 (%struct.ucred*, i8*, ...) @varlink_server_log(%struct.ucred* %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %102

79:                                               ; preds = %70
  %80 = load %struct.ucred*, %struct.ucred** %4, align 8
  %81 = getelementptr inbounds %struct.ucred, %struct.ucred* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ucred*, %struct.ucred** %5, align 8
  %84 = getelementptr inbounds %struct.ucred, %struct.ucred* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @UID_TO_PTR(i64 %85)
  %87 = call i32 @hashmap_get(i32 %82, i32 %86)
  %88 = call i32 @PTR_TO_UINT(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ucred*, %struct.ucred** %4, align 8
  %91 = getelementptr inbounds %struct.ucred, %struct.ucred* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp uge i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %79
  %95 = load %struct.ucred*, %struct.ucred** %4, align 8
  %96 = load %struct.ucred*, %struct.ucred** %4, align 8
  %97 = getelementptr inbounds %struct.ucred, %struct.ucred* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.ucred*, i8*, ...) @varlink_server_log(%struct.ucred* %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  store i32 0, i32* %3, align 4
  br label %102

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %63
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %94, %76, %57, %46
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @assert(%struct.ucred*) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @varlink_server_log(%struct.ucred*, i8*, ...) #1

declare dso_local i32 @uid_is_valid(i64) #1

declare dso_local i32 @PTR_TO_UINT(i32) #1

declare dso_local i32 @hashmap_get(i32, i32) #1

declare dso_local i32 @UID_TO_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

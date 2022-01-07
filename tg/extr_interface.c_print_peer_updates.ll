; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_peer_updates.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_peer_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }

@TGL_UPDATE_PHONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" phone\00", align 1
@TGL_UPDATE_CONTACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c" contact\00", align 1
@TGL_UPDATE_PHOTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" photo\00", align 1
@TGL_UPDATE_BLOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" blocked\00", align 1
@TGL_UPDATE_REAL_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" name\00", align 1
@TGL_UPDATE_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" contact_name\00", align 1
@TGL_UPDATE_REQUESTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c" status\00", align 1
@TGL_UPDATE_WORKING = common dso_local global i32 0, align 4
@TGL_UPDATE_FLAGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" flags\00", align 1
@TGL_UPDATE_TITLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" title\00", align 1
@TGL_UPDATE_ADMIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c" admin\00", align 1
@TGL_UPDATE_MEMBERS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c" members\00", align 1
@TGL_UPDATE_ACCESS_HASH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c" access_hash\00", align 1
@TGL_UPDATE_USERNAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c" username\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_peer_updates(%struct.in_ev* %0, i32 %1) #0 {
  %3 = alloca %struct.in_ev*, align 8
  %4 = alloca i32, align 4
  store %struct.in_ev* %0, %struct.in_ev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TGL_UPDATE_PHONE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %11 = call i32 @mprintf(%struct.in_ev* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TGL_UPDATE_CONTACT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %19 = call i32 @mprintf(%struct.in_ev* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TGL_UPDATE_PHOTO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %27 = call i32 @mprintf(%struct.in_ev* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TGL_UPDATE_BLOCKED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %35 = call i32 @mprintf(%struct.in_ev* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TGL_UPDATE_REAL_NAME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %43 = call i32 @mprintf(%struct.in_ev* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TGL_UPDATE_NAME, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %51 = call i32 @mprintf(%struct.in_ev* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @TGL_UPDATE_REQUESTED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %59 = call i32 @mprintf(%struct.in_ev* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TGL_UPDATE_WORKING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %67 = call i32 @mprintf(%struct.in_ev* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TGL_UPDATE_FLAGS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %75 = call i32 @mprintf(%struct.in_ev* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @TGL_UPDATE_TITLE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %83 = call i32 @mprintf(%struct.in_ev* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @TGL_UPDATE_ADMIN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %91 = call i32 @mprintf(%struct.in_ev* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @TGL_UPDATE_MEMBERS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %99 = call i32 @mprintf(%struct.in_ev* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @TGL_UPDATE_ACCESS_HASH, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %107 = call i32 @mprintf(%struct.in_ev* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @TGL_UPDATE_USERNAME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.in_ev*, %struct.in_ev** %3, align 8
  %115 = call i32 @mprintf(%struct.in_ev* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  ret void
}

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

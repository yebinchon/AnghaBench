; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_user_status.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_user_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgl_user_status = type { i32, i32 }
%struct.in_ev = type { i32 }

@enable_json = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"online (was online \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"offline (was online \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"offline (was online recently)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"offline (was online last week)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"offline (was online last month)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_user_status(%struct.tgl_user_status* %0, %struct.in_ev* %1) #0 {
  %3 = alloca %struct.tgl_user_status*, align 8
  %4 = alloca %struct.in_ev*, align 8
  store %struct.tgl_user_status* %0, %struct.tgl_user_status** %3, align 8
  store %struct.in_ev* %1, %struct.in_ev** %4, align 8
  %5 = load i32, i32* @enable_json, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %11 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %16 = call i32 @mprintf(%struct.in_ev* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %18 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %19 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @print_date_full(%struct.in_ev* %17, i32 %20)
  %22 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %23 = call i32 @mprintf(%struct.in_ev* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %26 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %31 = call i32 @mprintf(%struct.in_ev* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %75

32:                                               ; preds = %24
  %33 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %34 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %39 = call i32 @mprintf(%struct.in_ev* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %41 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %42 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @print_date_full(%struct.in_ev* %40, i32 %43)
  %45 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %46 = call i32 @mprintf(%struct.in_ev* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %74

47:                                               ; preds = %32
  %48 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %49 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -2
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %54 = call i32 @mprintf(%struct.in_ev* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %73

55:                                               ; preds = %47
  %56 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %57 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -3
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %62 = call i32 @mprintf(%struct.in_ev* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %72

63:                                               ; preds = %55
  %64 = load %struct.tgl_user_status*, %struct.tgl_user_status** %3, align 8
  %65 = getelementptr inbounds %struct.tgl_user_status, %struct.tgl_user_status* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -4
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %70 = call i32 @mprintf(%struct.in_ev* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %29
  br label %76

76:                                               ; preds = %75, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*) #1

declare dso_local i32 @print_date_full(%struct.in_ev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

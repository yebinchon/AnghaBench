; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_put_init_process.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_put_init_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32, i32, i32, i32, i32 }

@INIT_PROCESS = common dso_local global i32 0, align 4
@LOGIN_PROCESS = common dso_local global i32 0, align 4
@USER_PROCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utmp_put_init_process(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.utmpx, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 0
  %17 = load i32, i32* @INIT_PROCESS, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 5
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = call i32 @init_timestamp(%struct.utmpx* %14, i32 0)
  %28 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @copy_suffix(i32 %29, i32 4, i8* %30)
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @strncpy_exact(i32 %36, i8* %37, i32 4)
  br label %39

39:                                               ; preds = %34, %6
  %40 = call i32 @write_entry_both(%struct.utmpx* %14)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %78

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @LOGIN_PROCESS, align 4
  %48 = load i32, i32* @USER_PROCESS, align 4
  %49 = call i64 @IN_SET(i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* @LOGIN_PROCESS, align 4
  %53 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = call i32 @write_entry_both(%struct.utmpx* %14)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %7, align 4
  br label %78

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @USER_PROCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32, i32* @USER_PROCESS, align 4
  %66 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @strncpy(i32 %68, i8* %69, i32 3)
  %71 = call i32 @write_entry_both(%struct.utmpx* %14)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %7, align 4
  br label %78

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %60
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %74, %57, %43
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @init_timestamp(%struct.utmpx*, i32) #1

declare dso_local i32 @copy_suffix(i32, i32, i8*) #1

declare dso_local i32 @strncpy_exact(i32, i8*, i32) #1

declare dso_local i32 @write_entry_both(%struct.utmpx*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

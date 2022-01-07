; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_put_runlevel.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_utmp_put_runlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32, i32 }

@ESRCH = common dso_local global i32 0, align 4
@RUN_LVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utmp_put_runlevel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.utmpx, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.utmpx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = call i32 @utmp_get_runlevel(i32* %5, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ESRCH, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %48

26:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %48

33:                                               ; preds = %28
  %34 = call i32 @init_entry(%struct.utmpx* %6, i32 0)
  %35 = load i32, i32* @RUN_LVL, align 4
  %36 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 255
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 8
  %42 = or i32 %38, %41
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strncpy(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %47 = call i32 @write_entry_both(%struct.utmpx* %6)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %33, %32, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @utmp_get_runlevel(i32*, i32*) #2

declare dso_local i32 @init_entry(%struct.utmpx*, i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @write_entry_both(%struct.utmpx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

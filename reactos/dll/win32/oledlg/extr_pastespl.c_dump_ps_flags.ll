; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_dump_ps_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_dump_ps_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_flag = type { i8*, i32 }

@ps_flags = common dso_local global %struct.ps_flag* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"flags %08x %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dump_ps_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ps_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1000 x i8], align 16
  %4 = alloca %struct.ps_flag*, align 8
  store i32 %0, i32* %2, align 4
  %5 = bitcast [1000 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 1000, i1 false)
  %6 = load %struct.ps_flag*, %struct.ps_flag** @ps_flags, align 8
  store %struct.ps_flag* %6, %struct.ps_flag** %4, align 8
  br label %7

7:                                                ; preds = %28, %1
  %8 = load %struct.ps_flag*, %struct.ps_flag** %4, align 8
  %9 = getelementptr inbounds %struct.ps_flag, %struct.ps_flag* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.ps_flag*, %struct.ps_flag** %4, align 8
  %15 = getelementptr inbounds %struct.ps_flag, %struct.ps_flag* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %21 = load %struct.ps_flag*, %struct.ps_flag** %4, align 8
  %22 = getelementptr inbounds %struct.ps_flag, %struct.ps_flag* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcat(i8* %20, i8* %23)
  %25 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %26 = call i32 @strcat(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %19, %12
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.ps_flag*, %struct.ps_flag** %4, align 8
  %30 = getelementptr inbounds %struct.ps_flag, %struct.ps_flag* %29, i32 1
  store %struct.ps_flag* %30, %struct.ps_flag** %4, align 8
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* %2, align 4
  %33 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @TRACE(i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

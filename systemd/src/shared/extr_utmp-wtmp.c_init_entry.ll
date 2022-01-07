; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_init_entry.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_utmp-wtmp.c_init_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32, i32 }
%struct.utsname = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"~~\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utmpx*, i32)* @init_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_entry(%struct.utmpx* %0, i32 %1) #0 {
  %3 = alloca %struct.utmpx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.utsname, align 8
  store %struct.utmpx* %0, %struct.utmpx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.utsname* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %8 = call i32 @assert(%struct.utmpx* %7)
  %9 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @init_timestamp(%struct.utmpx* %9, i32 %10)
  %12 = call i64 @uname(%struct.utsname* %5)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.utsname, %struct.utsname* %5, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strncpy(i32 %17, i8* %19, i32 4)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %23 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strncpy(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %27 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strncpy(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.utmpx*) #2

declare dso_local i32 @init_timestamp(%struct.utmpx*, i32) #2

declare dso_local i64 @uname(%struct.utsname*) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

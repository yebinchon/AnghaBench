; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_check_EM_FINDTEXT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched32/extr_editor.c_check_EM_FINDTEXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_s = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EM_FINDTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"EM_FINDTEXT(%s,%d) '%s' in range(%d,%d), flags %08x, got start at %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.find_s*, i32)* @check_EM_FINDTEXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_EM_FINDTEXT(i32 %0, i8* %1, %struct.find_s* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.find_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.find_s* %2, %struct.find_s** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @memset(%struct.TYPE_5__* %10, i32 0, i32 12)
  %12 = load %struct.find_s*, %struct.find_s** %7, align 8
  %13 = getelementptr inbounds %struct.find_s, %struct.find_s* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.find_s*, %struct.find_s** %7, align 8
  %18 = getelementptr inbounds %struct.find_s, %struct.find_s* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.find_s*, %struct.find_s** %7, align 8
  %23 = getelementptr inbounds %struct.find_s, %struct.find_s* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EM_FINDTEXT, align 4
  %28 = load %struct.find_s*, %struct.find_s** %7, align 8
  %29 = getelementptr inbounds %struct.find_s, %struct.find_s* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ptrtoint %struct.TYPE_5__* %10 to i32
  %32 = call i32 @SendMessageA(i32 %26, i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.find_s*, %struct.find_s** %7, align 8
  %35 = getelementptr inbounds %struct.find_s, %struct.find_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.find_s*, %struct.find_s** %7, align 8
  %42 = getelementptr inbounds %struct.find_s, %struct.find_s* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.find_s*, %struct.find_s** %7, align 8
  %45 = getelementptr inbounds %struct.find_s, %struct.find_s* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.find_s*, %struct.find_s** %7, align 8
  %48 = getelementptr inbounds %struct.find_s, %struct.find_s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.find_s*, %struct.find_s** %7, align 8
  %51 = getelementptr inbounds %struct.find_s, %struct.find_s* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.find_s*, %struct.find_s** %7, align 8
  %55 = getelementptr inbounds %struct.find_s, %struct.find_s* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %53, i32 %56)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

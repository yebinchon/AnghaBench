; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/amd64/extr_i386-dis.c_append_seg.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/amd64/extr_i386-dis.c_append_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prefixes = common dso_local global i32 0, align 4
@PREFIX_CS = common dso_local global i32 0, align 4
@used_prefixes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%cs:\00", align 1
@intel_syntax = common dso_local global i32 0, align 4
@PREFIX_DS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%ds:\00", align 1
@PREFIX_SS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%ss:\00", align 1
@PREFIX_ES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%es:\00", align 1
@PREFIX_FS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%fs:\00", align 1
@PREFIX_GS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%gs:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @append_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_seg() #0 {
  %1 = load i32, i32* @prefixes, align 4
  %2 = load i32, i32* @PREFIX_CS, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @PREFIX_CS, align 4
  %7 = load i32, i32* @used_prefixes, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @used_prefixes, align 4
  %9 = load i32, i32* @intel_syntax, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %10
  %12 = call i32 @oappend(i8* %11)
  br label %13

13:                                               ; preds = %5, %0
  %14 = load i32, i32* @prefixes, align 4
  %15 = load i32, i32* @PREFIX_DS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* @PREFIX_DS, align 4
  %20 = load i32, i32* @used_prefixes, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* @used_prefixes, align 4
  %22 = load i32, i32* @intel_syntax, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %23
  %25 = call i32 @oappend(i8* %24)
  br label %26

26:                                               ; preds = %18, %13
  %27 = load i32, i32* @prefixes, align 4
  %28 = load i32, i32* @PREFIX_SS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @PREFIX_SS, align 4
  %33 = load i32, i32* @used_prefixes, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* @used_prefixes, align 4
  %35 = load i32, i32* @intel_syntax, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %36
  %38 = call i32 @oappend(i8* %37)
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i32, i32* @prefixes, align 4
  %41 = load i32, i32* @PREFIX_ES, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* @PREFIX_ES, align 4
  %46 = load i32, i32* @used_prefixes, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* @used_prefixes, align 4
  %48 = load i32, i32* @intel_syntax, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %49
  %51 = call i32 @oappend(i8* %50)
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* @prefixes, align 4
  %54 = load i32, i32* @PREFIX_FS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* @PREFIX_FS, align 4
  %59 = load i32, i32* @used_prefixes, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @used_prefixes, align 4
  %61 = load i32, i32* @intel_syntax, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %62
  %64 = call i32 @oappend(i8* %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* @prefixes, align 4
  %67 = load i32, i32* @PREFIX_GS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* @PREFIX_GS, align 4
  %72 = load i32, i32* @used_prefixes, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @used_prefixes, align 4
  %74 = load i32, i32* @intel_syntax, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %75
  %77 = call i32 @oappend(i8* %76)
  br label %78

78:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @oappend(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

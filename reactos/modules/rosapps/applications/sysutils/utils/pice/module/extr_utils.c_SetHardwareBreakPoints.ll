; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_SetHardwareBreakPoints.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_utils.c_SetHardwareBreakPoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@Bp = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"breakpoint %u at %.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetHardwareBreakPoints() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32*], align 16
  %8 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  store i32* %3, i32** %8, align 8
  %9 = getelementptr inbounds i32*, i32** %8, i64 1
  store i32* %4, i32** %9, align 8
  %10 = getelementptr inbounds i32*, i32** %9, i64 1
  store i32* %5, i32** %10, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 1
  store i32* %6, i32** %11, align 8
  %12 = call i32 (...) @ENTER_FUNC()
  call void asm sideeffect "\0A\09 \09\09pushl %eax\0A\09 \09\09xorl %eax,%eax\0A\09 \09\09mov %eax,%dr6\0A\09 \09\09mov %eax,%dr7\0A\09 \09\09popl %eax", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %65, %0
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %68

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = shl i32 %17, 2
  store i32 %18, i32* %2, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bp, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %16
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bp, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %26
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bp, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %2, align 4
  %44 = or i32 %43, 3
  store i32 %44, i32* %2, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bp, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sub nsw i32 3, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 %53
  %55 = load i32*, i32** %54, align 8
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Bp, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @DPRINT(i32 %62)
  br label %64

64:                                               ; preds = %42, %34, %26, %16
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %1, align 4
  br label %13

68:                                               ; preds = %13
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  call void asm sideeffect "\0A\09 \09\09\09pushl %eax\0A\09 \09\09\09movl $0,%eax\0A\09 \09\09\09andl $$0x000000FF,%eax\0A\09 \09\09\09orl $$0x300,%eax\0A\09 \09\09\09mov %eax,%dr7\0A\09 \09\09\09mov $1,%eax\0A\09 \09\09\09mov %eax,%dr0\0A\09 \09\09\09mov $2,%eax\0A\09 \09\09\09mov %eax,%dr1\0A\09 \09\09\09mov $3,%eax\0A\09 \09\09\09mov %eax,%dr2\0A\09 \09\09\09mov $4,%eax\0A\09 \09\09\09mov %eax,%dr3\0A\09 \09\09\09popl %eax", "*m,*m,*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #2, !srcloc !3
  br label %72

72:                                               ; preds = %71, %68
  %73 = call i32 (...) @LEAVE_FUNC()
  ret void
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 578, i32 581, i32 598, i32 619, i32 639, i32 659}
!3 = !{i32 925, i32 928, i32 947, i32 968, i32 998, i32 1022, i32 1045, i32 1065, i32 1088, i32 1108, i32 1131, i32 1151, i32 1174, i32 1194, i32 1217}

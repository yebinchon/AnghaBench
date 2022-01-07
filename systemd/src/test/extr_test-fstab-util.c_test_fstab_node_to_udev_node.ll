; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-fstab-util.c_test_fstab_node_to_udev_node.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-fstab-util.c_test_fstab_node_to_udev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"LABEL=appl\C3\A9/jack\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"/dev/disk/by-label/appl\C3\A9\\x2fjack\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"PARTLABEL=pinki\C3\A9 pie\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"/dev/disk/by-partlabel/pinki\C3\A9\\x20pie\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"UUID=037b9d94-148e-4ee4-8d38-67bfe15bb535\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"/dev/disk/by-uuid/037b9d94-148e-4ee4-8d38-67bfe15bb535\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"PARTUUID=037b9d94-148e-4ee4-8d38-67bfe15bb535\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"/dev/disk/by-partuuid/037b9d94-148e-4ee4-8d38-67bfe15bb535\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"PONIES=awesome\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"/dev/xda1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fstab_node_to_udev_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fstab_node_to_udev_node() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @fstab_node_to_udev_node(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 @puts(i8* %3)
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @streq(i8* %5, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @assert_se(i32 %6)
  %8 = load i8*, i8** %1, align 8
  %9 = call i32 @free(i8* %8)
  %10 = call i8* @fstab_node_to_udev_node(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @puts(i8* %11)
  %13 = load i8*, i8** %1, align 8
  %14 = call i32 @streq(i8* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @free(i8* %16)
  %18 = call i8* @fstab_node_to_udev_node(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i8* %18, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = call i32 @puts(i8* %19)
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @streq(i8* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @free(i8* %24)
  %26 = call i8* @fstab_node_to_udev_node(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @puts(i8* %27)
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @streq(i8* %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @free(i8* %32)
  %34 = call i8* @fstab_node_to_udev_node(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i8* %34, i8** %1, align 8
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 @puts(i8* %35)
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @streq(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @free(i8* %40)
  %42 = call i8* @fstab_node_to_udev_node(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i8* %42, i8** %1, align 8
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @puts(i8* %43)
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 @streq(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %47 = call i32 @assert_se(i32 %46)
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 @free(i8* %48)
  ret void
}

declare dso_local i8* @fstab_node_to_udev_node(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

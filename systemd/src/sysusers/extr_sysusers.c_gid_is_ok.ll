; ModuleID = '/home/carl/AnghaBench/systemd/src/sysusers/extr_sysusers.c_gid_is_ok.c'
source_filename = "/home/carl/AnghaBench/systemd/src/sysusers/extr_sysusers.c_gid_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }
%struct.passwd = type { i32 }

@todo_gids = common dso_local global i32 0, align 4
@todo_uids = common dso_local global i32 0, align 4
@database_by_gid = common dso_local global i32 0, align 4
@database_by_uid = common dso_local global i32 0, align 4
@arg_root = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @gid_is_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gid_is_ok(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.group*, align 8
  %5 = alloca %struct.passwd*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @todo_gids, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @GID_TO_PTR(i64 %7)
  %9 = call i64 @ordered_hashmap_get(i32 %6, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load i32, i32* @todo_uids, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @UID_TO_PTR(i64 %14)
  %16 = call i64 @ordered_hashmap_get(i32 %13, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %67

19:                                               ; preds = %12
  %20 = load i32, i32* @database_by_gid, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @GID_TO_PTR(i64 %21)
  %23 = call i64 @hashmap_contains(i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %67

26:                                               ; preds = %19
  %27 = load i32, i32* @database_by_uid, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @UID_TO_PTR(i64 %28)
  %30 = call i64 @hashmap_contains(i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load i32, i32* @arg_root, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %33
  store i32 0, i32* @errno, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call %struct.group* @getgrgid(i64 %37)
  store %struct.group* %38, %struct.group** %4, align 8
  %39 = load %struct.group*, %struct.group** %4, align 8
  %40 = icmp ne %struct.group* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %67

42:                                               ; preds = %36
  %43 = load i32, i32* @errno, align 4
  %44 = load i32, i32* @ENOENT, align 4
  %45 = call i32 @IN_SET(i32 %43, i32 0, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %42
  store i32 0, i32* @errno, align 4
  %51 = load i64, i64* %3, align 8
  %52 = trunc i64 %51 to i32
  %53 = call %struct.passwd* @getpwuid(i32 %52)
  store %struct.passwd* %53, %struct.passwd** %5, align 8
  %54 = load %struct.passwd*, %struct.passwd** %5, align 8
  %55 = icmp ne %struct.passwd* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %67

57:                                               ; preds = %50
  %58 = load i32, i32* @errno, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = call i32 @IN_SET(i32 %58, i32 0, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @errno, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %33
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %62, %56, %47, %41, %32, %25, %18, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @ordered_hashmap_get(i32, i32) #1

declare dso_local i32 @GID_TO_PTR(i64) #1

declare dso_local i32 @UID_TO_PTR(i64) #1

declare dso_local i64 @hashmap_contains(i32, i32) #1

declare dso_local %struct.group* @getgrgid(i64) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_deleg_perm_comment.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_deleg_perm_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Must also have the permission that is being\0A\09\09\09\09allowed\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"Must also have the 'create' ability and 'mount'\0A\09\09\09\09ability in the origin file system\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Must also have the 'mount' ability\00", align 1
@.str.4 = private unnamed_addr constant [123 x i8] c"Allows lookup of paths within a dataset;\0A\09\09\09\09given an object number. Ordinary users need this\0A\09\09\09\09in order to use zfs diff\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Allows adding a user hold to a snapshot\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Allows mount/umount of ZFS datasets\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Must also have the 'mount'\0A\09\09\09\09and 'promote' ability in the origin file system\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Must also have the 'mount' and 'create' ability\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"Allows releasing a user hold which\0A\09\09\09\09might destroy the snapshot\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"Must also have the 'mount' and 'create'\0A\09\09\09\09ability in the new parent\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Allows sharing file systems over NFS or SMB\0A\09\09\09\09protocols\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Allows loading or unloading an encryption key\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Allows changing or adding an encryption key\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Allows accessing any groupquota@... property\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Allows reading any groupused@... property\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Allows changing any user property\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Allows accessing any userquota@... property\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Allows reading any userused@... property\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Allows accessing any userobjquota@... property\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Allows accessing any \0A\09\09\09\09groupobjquota@... property\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Allows reading any groupobjused@... property\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Allows reading any userobjused@... property\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Allows accessing any projectquota@... property\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"Allows accessing any \0A\09\09\09\09projectobjquota@... property\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Allows reading any projectused@... property\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"Allows accessing any \0A\09\09\09\09projectobjused@... property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @deleg_perm_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @deleg_perm_comment(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %65 [
    i32 157, label %5
    i32 155, label %7
    i32 154, label %9
    i32 153, label %11
    i32 152, label %13
    i32 147, label %15
    i32 145, label %17
    i32 140, label %19
    i32 139, label %21
    i32 138, label %23
    i32 137, label %25
    i32 136, label %27
    i32 135, label %29
    i32 134, label %31
    i32 133, label %33
    i32 146, label %35
    i32 156, label %37
    i32 149, label %39
    i32 148, label %41
    i32 130, label %43
    i32 129, label %45
    i32 128, label %47
    i32 132, label %49
    i32 151, label %51
    i32 150, label %53
    i32 131, label %55
    i32 142, label %57
    i32 144, label %59
    i32 141, label %61
    i32 143, label %63
  ]

5:                                                ; preds = %1
  %6 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  br label %66

7:                                                ; preds = %1
  %8 = call i8* @gettext(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  br label %66

9:                                                ; preds = %1
  %10 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i8* %10, i8** %3, align 8
  br label %66

11:                                               ; preds = %1
  %12 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i8* %12, i8** %3, align 8
  br label %66

13:                                               ; preds = %1
  %14 = call i8* @gettext(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.4, i64 0, i64 0))
  store i8* %14, i8** %3, align 8
  br label %66

15:                                               ; preds = %1
  %16 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  br label %66

17:                                               ; preds = %1
  %18 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i8* %18, i8** %3, align 8
  br label %66

19:                                               ; preds = %1
  %20 = call i8* @gettext(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  br label %66

21:                                               ; preds = %1
  %22 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  store i8* %22, i8** %3, align 8
  br label %66

23:                                               ; preds = %1
  %24 = call i8* @gettext(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  store i8* %24, i8** %3, align 8
  br label %66

25:                                               ; preds = %1
  %26 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  store i8* %26, i8** %3, align 8
  br label %66

27:                                               ; preds = %1
  %28 = call i8* @gettext(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %3, align 8
  br label %66

29:                                               ; preds = %1
  %30 = call i8* @gettext(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %66

31:                                               ; preds = %1
  %32 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  store i8* %32, i8** %3, align 8
  br label %66

33:                                               ; preds = %1
  %34 = call i8* @gettext(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %3, align 8
  br label %66

35:                                               ; preds = %1
  %36 = call i8* @gettext(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  store i8* %36, i8** %3, align 8
  br label %66

37:                                               ; preds = %1
  %38 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  store i8* %38, i8** %3, align 8
  br label %66

39:                                               ; preds = %1
  %40 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  store i8* %40, i8** %3, align 8
  br label %66

41:                                               ; preds = %1
  %42 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  store i8* %42, i8** %3, align 8
  br label %66

43:                                               ; preds = %1
  %44 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  store i8* %44, i8** %3, align 8
  br label %66

45:                                               ; preds = %1
  %46 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0))
  store i8* %46, i8** %3, align 8
  br label %66

47:                                               ; preds = %1
  %48 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  store i8* %48, i8** %3, align 8
  br label %66

49:                                               ; preds = %1
  %50 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  store i8* %50, i8** %3, align 8
  br label %66

51:                                               ; preds = %1
  %52 = call i8* @gettext(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0))
  store i8* %52, i8** %3, align 8
  br label %66

53:                                               ; preds = %1
  %54 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0))
  store i8* %54, i8** %3, align 8
  br label %66

55:                                               ; preds = %1
  %56 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  store i8* %56, i8** %3, align 8
  br label %66

57:                                               ; preds = %1
  %58 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0))
  store i8* %58, i8** %3, align 8
  br label %66

59:                                               ; preds = %1
  %60 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i64 0, i64 0))
  store i8* %60, i8** %3, align 8
  br label %66

61:                                               ; preds = %1
  %62 = call i8* @gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0))
  store i8* %62, i8** %3, align 8
  br label %66

63:                                               ; preds = %1
  %64 = call i8* @gettext(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0))
  store i8* %64, i8** %3, align 8
  br label %66

65:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %66

66:                                               ; preds = %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i8* @gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

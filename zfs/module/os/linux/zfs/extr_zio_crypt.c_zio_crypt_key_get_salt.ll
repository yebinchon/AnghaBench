; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_key_get_salt.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zio_crypt.c_zio_crypt_key_get_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@RW_READER = common dso_local global i32 0, align 4
@ZIO_DATA_SALT_LEN = common dso_local global i32 0, align 4
@ZFS_CURRENT_MAX_SALT_USES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_crypt_key_get_salt(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* @RW_READER, align 4
  %11 = call i32 @rw_enter(i32* %9, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @ZIO_DATA_SALT_LEN, align 4
  %17 = call i32 @bcopy(i32 %14, i32* %15, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i64 @atomic_inc_64_nv(i32* %19)
  %21 = load i64, i64* @ZFS_CURRENT_MAX_SALT_USES, align 8
  %22 = icmp sge i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @rw_exit(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = call i32 @zio_crypt_key_change_salt(%struct.TYPE_4__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %2
  store i32 0, i32* %3, align 4
  br label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i64 @atomic_inc_64_nv(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @zio_crypt_key_change_salt(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

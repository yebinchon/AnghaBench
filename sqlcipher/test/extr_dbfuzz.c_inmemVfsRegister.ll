; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz.c_inmemVfsRegister.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz.c_inmemVfsRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }

@inmemVfsRegister.inmemVfs = internal global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"inmem\00", align 1
@inmemOpen = common dso_local global i32 0, align 4
@inmemDelete = common dso_local global i32 0, align 4
@inmemAccess = common dso_local global i32 0, align 4
@inmemFullPathname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @inmemVfsRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inmemVfsRegister() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call %struct.TYPE_4__* @sqlite3_vfs_find(i32 0)
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %1, align 8
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 0), align 8
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 1), align 4
  store i32 200, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 2), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 3), align 8
  %3 = load i32, i32* @inmemOpen, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 10), align 8
  %4 = load i32, i32* @inmemDelete, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 9), align 4
  %5 = load i32, i32* @inmemAccess, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 8), align 8
  %6 = load i32, i32* @inmemFullPathname, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 7), align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 6), align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 5), align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0, i32 4), align 8
  %16 = call i32 @sqlite3_vfs_register(%struct.TYPE_4__* @inmemVfsRegister.inmemVfs, i32 0)
  ret void
}

declare dso_local %struct.TYPE_4__* @sqlite3_vfs_find(i32) #1

declare dso_local i32 @sqlite3_vfs_register(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

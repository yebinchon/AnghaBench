; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dsm/extr_sd.c_netbios_ns_discover_on_entry_added.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dsm/extr_sd.c_netbios_ns_discover_on_entry_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETBIOS_FILESERVER = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [9 x i8] c"smb://%s\00", align 1
@ITEM_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Adding item %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @netbios_ns_discover_on_entry_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netbios_ns_discover_on_entry_added(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call signext i8 @netbios_ns_entry_type(i32* %12)
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @NETBIOS_FILESERVER, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @netbios_ns_entry_name(i32* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @asprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @ITEM_NET, align 4
  %30 = call i32* @input_item_NewDirectory(i8* %27, i8* %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @msg_Dbg(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @entry_item_append(i32* %36, i32* %37, i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @input_item_Release(i32* %40)
  br label %42

42:                                               ; preds = %25, %26, %2
  ret void
}

declare dso_local signext i8 @netbios_ns_entry_type(i32*) #1

declare dso_local i8* @netbios_ns_entry_name(i32*) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32* @input_item_NewDirectory(i8*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @entry_item_append(i32*, i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

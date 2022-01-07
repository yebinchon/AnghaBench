; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_read_prdt.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_read_prdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i64 }
%struct.ahci_cmd_hdr = type { i32 }
%struct.ahci_prdt_entry = type { i32, i32 }

@AHCI_CL_SIZE = common dso_local global i32 0, align 4
@DBCMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i8*, i32)* @read_prdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_prdt(%struct.ahci_port* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ahci_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ahci_cmd_hdr*, align 8
  %12 = alloca %struct.ahci_prdt_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.ahci_port*, %struct.ahci_port** %6, align 8
  %20 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AHCI_CL_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.ahci_cmd_hdr*
  store %struct.ahci_cmd_hdr* %28, %struct.ahci_cmd_hdr** %11, align 8
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i8*, i8** %9, align 8
  store i8* %30, i8** %13, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 128
  %33 = bitcast i32* %32 to i8*
  %34 = bitcast i8* %33 to %struct.ahci_prdt_entry*
  store %struct.ahci_prdt_entry* %34, %struct.ahci_prdt_entry** %12, align 8
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %83, %5
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.ahci_cmd_hdr*, %struct.ahci_cmd_hdr** %11, align 8
  %38 = getelementptr inbounds %struct.ahci_cmd_hdr, %struct.ahci_cmd_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  br i1 %45, label %46, label %86

46:                                               ; preds = %44
  %47 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %12, align 8
  %48 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DBCMASK, align 4
  %51 = and i32 %49, %50
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  %53 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %12, align 8
  %54 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = call i32* @paddr_guest2host(i32 %55, i32 %56)
  store i32* %57, i32** %16, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %15, align 4
  br label %65

63:                                               ; preds = %46
  %64 = load i32, i32* %17, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %18, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @memcpy(i8* %67, i32* %68, i32 %69)
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %75, %77
  %79 = inttoptr i64 %78 to i32*
  %80 = bitcast i32* %79 to i8*
  store i8* %80, i8** %13, align 8
  %81 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %12, align 8
  %82 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %81, i32 1
  store %struct.ahci_prdt_entry* %82, %struct.ahci_prdt_entry** %12, align 8
  br label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %35

86:                                               ; preds = %44
  ret void
}

declare dso_local i32* @paddr_guest2host(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

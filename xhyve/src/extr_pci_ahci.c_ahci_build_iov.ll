; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_build_iov.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_build_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32 }
%struct.ahci_ioreq = type { i32, i32, i32, %struct.blockif_req }
%struct.blockif_req = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ahci_prdt_entry = type { i32, i64 }

@BLOCKIF_IOV_MAX = common dso_local global i32 0, align 4
@DBCMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, %struct.ahci_ioreq*, %struct.ahci_prdt_entry*, i32)* @ahci_build_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_build_iov(%struct.ahci_port* %0, %struct.ahci_ioreq* %1, %struct.ahci_prdt_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca %struct.ahci_ioreq*, align 8
  %7 = alloca %struct.ahci_prdt_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.blockif_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store %struct.ahci_ioreq* %1, %struct.ahci_ioreq** %6, align 8
  store %struct.ahci_prdt_entry* %2, %struct.ahci_prdt_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %18 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %17, i32 0, i32 3
  store %struct.blockif_req* %18, %struct.blockif_req** %9, align 8
  %19 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %20 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %23 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %26 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub i32 %24, %27
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %97, %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %38, 0
  br label %40

40:                                               ; preds = %37, %33, %29
  %41 = phi i1 [ false, %33 ], [ false, %29 ], [ %39, %37 ]
  br i1 %41, label %42, label %102

42:                                               ; preds = %40
  %43 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %7, align 8
  %44 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DBCMASK, align 4
  %47 = and i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %97

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %16, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %7, align 8
  %67 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @paddr_guest2host(i64 %71, i32 %72)
  %74 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %75 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %73, i32* %80, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %83 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 %81, i32* %88, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %65, %52
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = load %struct.ahci_prdt_entry*, %struct.ahci_prdt_entry** %7, align 8
  %101 = getelementptr inbounds %struct.ahci_prdt_entry, %struct.ahci_prdt_entry* %100, i32 1
  store %struct.ahci_prdt_entry* %101, %struct.ahci_prdt_entry** %7, align 8
  br label %29

102:                                              ; preds = %40
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @BLOCKIF_IOV_MAX, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %167

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %109 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @blockif_sectsz(i32 %110)
  %112 = srem i32 %107, %111
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  br label %120

120:                                              ; preds = %152, %106
  %121 = load i32, i32* %15, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %166

123:                                              ; preds = %120
  %124 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %125 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ugt i64 %133, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %123
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %141 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %149, %139
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  br label %166

152:                                              ; preds = %123
  %153 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %154 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %15, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %11, align 4
  br label %120

166:                                              ; preds = %137, %120
  br label %167

167:                                              ; preds = %166, %102
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %170 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %13, align 4
  %172 = load %struct.blockif_req*, %struct.blockif_req** %9, align 8
  %173 = getelementptr inbounds %struct.blockif_req, %struct.blockif_req* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %176 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %180 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %183 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ult i32 %181, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %167
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp slt i32 %187, %188
  br label %190

190:                                              ; preds = %186, %167
  %191 = phi i1 [ false, %167 ], [ %189, %186 ]
  %192 = zext i1 %191 to i32
  %193 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %6, align 8
  %194 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  ret void
}

declare dso_local i32 @paddr_guest2host(i64, i32) #1

declare dso_local i32 @blockif_sectsz(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

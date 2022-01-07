; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_pci.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-builtin-net_id.c_names_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netnames = type { i64*, i64*, i64*, %struct.netnames*, i32 }
%struct.virtfn_info = type { %struct.netnames*, i64* }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@NET_PCI = common dso_local global i32 0, align 4
@NAMING_SR_IOV_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netnames*, %struct.netnames*)* @names_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @names_pci(%struct.netnames* %0, %struct.netnames* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netnames*, align 8
  %5 = alloca %struct.netnames*, align 8
  %6 = alloca %struct.netnames*, align 8
  %7 = alloca %struct.netnames, align 8
  %8 = alloca %struct.virtfn_info, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.netnames* %0, %struct.netnames** %4, align 8
  store %struct.netnames* %1, %struct.netnames** %5, align 8
  %11 = bitcast %struct.netnames* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 40, i1 false)
  %12 = bitcast %struct.virtfn_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.netnames*, %struct.netnames** %4, align 8
  %14 = call i32 @assert(%struct.netnames* %13)
  %15 = load %struct.netnames*, %struct.netnames** %5, align 8
  %16 = call i32 @assert(%struct.netnames* %15)
  %17 = load %struct.netnames*, %struct.netnames** %4, align 8
  %18 = call i32 @sd_device_get_parent(%struct.netnames* %17, %struct.netnames** %6)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %162

23:                                               ; preds = %2
  %24 = load %struct.netnames*, %struct.netnames** %6, align 8
  %25 = call %struct.netnames* @skip_virtio(%struct.netnames* %24)
  store %struct.netnames* %25, %struct.netnames** %6, align 8
  %26 = load %struct.netnames*, %struct.netnames** %6, align 8
  %27 = icmp ne %struct.netnames* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %162

31:                                               ; preds = %23
  %32 = load %struct.netnames*, %struct.netnames** %6, align 8
  %33 = call i64 @sd_device_get_subsystem(%struct.netnames* %32, i8** %9)
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @streq(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @NET_PCI, align 4
  %41 = load %struct.netnames*, %struct.netnames** %5, align 8
  %42 = getelementptr inbounds %struct.netnames, %struct.netnames* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.netnames*, %struct.netnames** %6, align 8
  %44 = load %struct.netnames*, %struct.netnames** %5, align 8
  %45 = getelementptr inbounds %struct.netnames, %struct.netnames* %44, i32 0, i32 3
  store %struct.netnames* %43, %struct.netnames** %45, align 8
  br label %56

46:                                               ; preds = %35, %31
  %47 = load %struct.netnames*, %struct.netnames** %4, align 8
  %48 = load %struct.netnames*, %struct.netnames** %5, align 8
  %49 = getelementptr inbounds %struct.netnames, %struct.netnames* %48, i32 0, i32 3
  %50 = call i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, %struct.netnames** %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %162

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* @NAMING_SR_IOV_V, align 4
  %58 = call i64 @naming_scheme_has(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %154

60:                                               ; preds = %56
  %61 = load %struct.netnames*, %struct.netnames** %4, align 8
  %62 = load %struct.netnames*, %struct.netnames** %5, align 8
  %63 = call i64 @get_virtfn_info(%struct.netnames* %61, %struct.netnames* %62, %struct.virtfn_info* %8)
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %154

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 0
  %67 = load %struct.netnames*, %struct.netnames** %66, align 8
  %68 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 3
  store %struct.netnames* %67, %struct.netnames** %68, align 8
  %69 = load %struct.netnames*, %struct.netnames** %4, align 8
  %70 = call i32 @dev_pci_onboard(%struct.netnames* %69, %struct.netnames* %7)
  %71 = load %struct.netnames*, %struct.netnames** %4, align 8
  %72 = call i32 @dev_pci_slot(%struct.netnames* %71, %struct.netnames* %7)
  %73 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = call i32 @strlen(i64* %80)
  %82 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @strlen(i64* %83)
  %85 = add nsw i32 %81, %84
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %86, 8
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load %struct.netnames*, %struct.netnames** %5, align 8
  %90 = getelementptr inbounds %struct.netnames, %struct.netnames* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = call i32 @strscpyl(i64* %91, i32 8, i64* %93, i64* %95, i32* null)
  br label %97

97:                                               ; preds = %88, %78
  br label %98

98:                                               ; preds = %97, %65
  %99 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @strlen(i64* %106)
  %108 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = call i32 @strlen(i64* %109)
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %112, 8
  br i1 %113, label %114, label %123

114:                                              ; preds = %104
  %115 = load %struct.netnames*, %struct.netnames** %5, align 8
  %116 = getelementptr inbounds %struct.netnames, %struct.netnames* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = call i32 @strscpyl(i64* %117, i32 8, i64* %119, i64* %121, i32* null)
  br label %123

123:                                              ; preds = %114, %104
  br label %124

124:                                              ; preds = %123, %98
  %125 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = call i32 @strlen(i64* %132)
  %134 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = call i32 @strlen(i64* %135)
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = icmp ult i64 %138, 8
  br i1 %139, label %140, label %149

140:                                              ; preds = %130
  %141 = load %struct.netnames*, %struct.netnames** %5, align 8
  %142 = getelementptr inbounds %struct.netnames, %struct.netnames* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds %struct.netnames, %struct.netnames* %7, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = call i32 @strscpyl(i64* %143, i32 8, i64* %145, i64* %147, i32* null)
  br label %149

149:                                              ; preds = %140, %130
  br label %150

150:                                              ; preds = %149, %124
  %151 = getelementptr inbounds %struct.virtfn_info, %struct.virtfn_info* %8, i32 0, i32 0
  %152 = load %struct.netnames*, %struct.netnames** %151, align 8
  %153 = call i32 @sd_device_unref(%struct.netnames* %152)
  br label %161

154:                                              ; preds = %60, %56
  %155 = load %struct.netnames*, %struct.netnames** %4, align 8
  %156 = load %struct.netnames*, %struct.netnames** %5, align 8
  %157 = call i32 @dev_pci_onboard(%struct.netnames* %155, %struct.netnames* %156)
  %158 = load %struct.netnames*, %struct.netnames** %4, align 8
  %159 = load %struct.netnames*, %struct.netnames** %5, align 8
  %160 = call i32 @dev_pci_slot(%struct.netnames* %158, %struct.netnames* %159)
  br label %161

161:                                              ; preds = %154, %150
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %161, %53, %28, %21
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.netnames*) #2

declare dso_local i32 @sd_device_get_parent(%struct.netnames*, %struct.netnames**) #2

declare dso_local %struct.netnames* @skip_virtio(%struct.netnames*) #2

declare dso_local i64 @sd_device_get_subsystem(%struct.netnames*, i8**) #2

declare dso_local i64 @streq(i8*, i8*) #2

declare dso_local i32 @sd_device_get_parent_with_subsystem_devtype(%struct.netnames*, i8*, i32*, %struct.netnames**) #2

declare dso_local i64 @naming_scheme_has(i32) #2

declare dso_local i64 @get_virtfn_info(%struct.netnames*, %struct.netnames*, %struct.virtfn_info*) #2

declare dso_local i32 @dev_pci_onboard(%struct.netnames*, %struct.netnames*) #2

declare dso_local i32 @dev_pci_slot(%struct.netnames*, %struct.netnames*) #2

declare dso_local i32 @strlen(i64*) #2

declare dso_local i32 @strscpyl(i64*, i32, i64*, i64*, i32*) #2

declare dso_local i32 @sd_device_unref(%struct.netnames*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

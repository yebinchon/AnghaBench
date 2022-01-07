; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_GetNfsVolumeData.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_fsctl.c_GetNfsVolumeData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { %struct.TYPE_40__, i32 }
%struct.TYPE_40__ = type { i32, i32, i32, i32, %struct.TYPE_33__, %struct.TYPE_55__, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_46__ = type { %struct.TYPE_41__, i32*, %struct.TYPE_43__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_47__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, i32, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_56__, %struct.TYPE_54__, i32, %struct.TYPE_53__, %struct.TYPE_52__, %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_49__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_53__ = type { i64 }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_45__ = type { i64, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_44__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid output! %d %p\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AttributeData = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_48__*, %struct.TYPE_46__*)* @GetNfsVolumeData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetNfsVolumeData(%struct.TYPE_48__* %0, %struct.TYPE_46__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca %struct.TYPE_46__*, align 8
  %6 = alloca %struct.TYPE_47__*, align 8
  %7 = alloca %struct.TYPE_42__*, align 8
  %8 = alloca %struct.TYPE_45__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_44__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %4, align 8
  store %struct.TYPE_46__* %1, %struct.TYPE_46__** %5, align 8
  %12 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_42__*
  store %struct.TYPE_42__* %16, %struct.TYPE_42__** %7, align 8
  %17 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %18 = call %struct.TYPE_47__* @IoGetCurrentIrpStackLocation(%struct.TYPE_46__* %17)
  store %struct.TYPE_47__* %18, %struct.TYPE_47__** %6, align 8
  %19 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26, %2
  %32 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36, i32* %39)
  %41 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %41, i32* %3, align 4
  br label %195

42:                                               ; preds = %26
  %43 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %54, i32 0, i32 12
  %56 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %61, i32 0, i32 11
  %63 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %65 = call i32 @NtfsGetFreeClusters(%struct.TYPE_48__* %64)
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %76, i32 0, i32 8
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %93, %97
  %99 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %124 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FALSE, align 4
  %128 = call i32 @FindFirstAttribute(i32* %9, %struct.TYPE_48__* %123, i32 %126, i32 %127, %struct.TYPE_45__** %8)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %151, %42
  %130 = load i32, i32* %10, align 4
  %131 = call i64 @NT_SUCCESS(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %129
  %134 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AttributeData, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ASSERT(i32 %142)
  %144 = load %struct.TYPE_45__*, %struct.TYPE_45__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  br label %153

151:                                              ; preds = %133
  %152 = call i32 @FindNextAttribute(i32* %9, %struct.TYPE_45__** %8)
  store i32 %152, i32* %10, align 4
  br label %129

153:                                              ; preds = %139, %129
  %154 = call i32 @FindCloseAttribute(i32* %9)
  %155 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %156, i32 0, i32 0
  store i32 4, i32* %157, align 8
  %158 = load %struct.TYPE_47__*, %struct.TYPE_47__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp uge i64 %163, 8
  br i1 %164, label %165, label %193

165:                                              ; preds = %153
  %166 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = ptrtoint i32* %168 to i64
  %170 = add i64 %169, 4
  %171 = inttoptr i64 %170 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %171, %struct.TYPE_44__** %11, align 8
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %172, i32 0, i32 0
  store i32 4, i32* %173, align 4
  %174 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_46__*, %struct.TYPE_46__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 8
  br label %193

193:                                              ; preds = %165, %153
  %194 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %193, %31
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.TYPE_47__* @IoGetCurrentIrpStackLocation(%struct.TYPE_46__*) #1

declare dso_local i32 @DPRINT1(i8*, i32, i32*) #1

declare dso_local i32 @NtfsGetFreeClusters(%struct.TYPE_48__*) #1

declare dso_local i32 @FindFirstAttribute(i32*, %struct.TYPE_48__*, i32, i32, %struct.TYPE_45__**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @FindNextAttribute(i32*, %struct.TYPE_45__**) #1

declare dso_local i32 @FindCloseAttribute(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

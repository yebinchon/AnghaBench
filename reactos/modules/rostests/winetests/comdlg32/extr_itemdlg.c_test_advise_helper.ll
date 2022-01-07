; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_test_advise_helper.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comdlg32/extr_itemdlg.c_test_advise_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"got ref %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Got cookie: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"got cookie: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_advise_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_advise_helper(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [10 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = call i32* (...) @IFileDialogEvents_Constructor()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_4__* @impl_from_IFileDialogEvents(i32* %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %13 = call i32 @IFileDialog_Advise(i32* %11, i32* null, i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @E_INVALIDARG, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = call i32 @ensure_zero_events(%struct.TYPE_4__* %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @IFileDialog_Unadvise(i32* %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @E_INVALIDARG, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %70, %1
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %46
  %48 = call i32 @IFileDialog_Advise(i32* %43, i32* %44, i32* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @S_OK, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = add nsw i32 %59, %61
  %63 = icmp eq i32 %58, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %42
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %39

73:                                               ; preds = %39
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 11
  %78 = zext i1 %77 to i32
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = call i32 @ensure_zero_events(%struct.TYPE_4__* %83)
  store i32 3, i32* %6, align 4
  br label %85

85:                                               ; preds = %101, %73
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 7
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IFileDialog_Unadvise(i32* %89, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @S_OK, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %85

104:                                              ; preds = %85
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 7
  %109 = zext i1 %108 to i32
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = call i32 @ensure_zero_events(%struct.TYPE_4__* %114)
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %132, %104
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 3
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i32*, i32** %2, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IFileDialog_Unadvise(i32* %120, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %116

135:                                              ; preds = %116
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 4
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = call i32 @ensure_zero_events(%struct.TYPE_4__* %145)
  store i32 7, i32* %6, align 4
  br label %147

147:                                              ; preds = %163, %135
  %148 = load i32, i32* %6, align 4
  %149 = icmp slt i32 %148, 10
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = load i32*, i32** %2, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @IFileDialog_Unadvise(i32* %151, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @S_OK, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %147

166:                                              ; preds = %147
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 1
  %171 = zext i1 %170 to i32
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ok(i32 %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = call i32 @ensure_zero_events(%struct.TYPE_4__* %176)
  %178 = load i32*, i32** %2, align 8
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 9
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i32 @IFileDialog_Unadvise(i32* %178, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @E_INVALIDARG, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 1
  %193 = zext i1 %192 to i32
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ok(i32 %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %199 = call i32 @ensure_zero_events(%struct.TYPE_4__* %198)
  %200 = load i32*, i32** %2, align 8
  %201 = load i32*, i32** %4, align 8
  %202 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %203 = call i32 @IFileDialog_Advise(i32* %200, i32* %201, i32* %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @S_OK, align 4
  %206 = icmp eq i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @ok(i32 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %208)
  %210 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = icmp sge i32 %211, 1
  %213 = zext i1 %212 to i32
  %214 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %215 = load i32, i32* %214, align 16
  %216 = call i32 @ok(i32 %213, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i32
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ok(i32 %221, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %224)
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %227 = call i32 @ensure_zero_events(%struct.TYPE_4__* %226)
  %228 = load i32*, i32** %2, align 8
  %229 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %230 = load i32, i32* %229, align 16
  %231 = call i32 @IFileDialog_Unadvise(i32* %228, i32 %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32*, i32** %4, align 8
  %233 = call i32 @IFileDialogEvents_Release(i32* %232)
  ret void
}

declare dso_local i32* @IFileDialogEvents_Constructor(...) #1

declare dso_local %struct.TYPE_4__* @impl_from_IFileDialogEvents(i32*) #1

declare dso_local i32 @IFileDialog_Advise(i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ensure_zero_events(%struct.TYPE_4__*) #1

declare dso_local i32 @IFileDialog_Unadvise(i32*, i32) #1

declare dso_local i32 @IFileDialogEvents_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

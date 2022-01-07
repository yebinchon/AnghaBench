; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_BeginRow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_wrap.c_ME_BeginRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_29__, %struct.TYPE_34__*, i64, i64, i64, i64, i64, i8*, i32*, i8*, i32*, %struct.TYPE_32__* }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_28__*, %struct.TYPE_27__, i64 }
%struct.TYPE_28__ = type { i64, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, %struct.TYPE_39__*, %struct.TYPE_30__ }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i64, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_33__ }
%struct.TYPE_36__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@diCell = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*)* @ME_BeginRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ME_BeginRow(%struct.TYPE_31__* %0) #0 {
  %2 = alloca %struct.TYPE_31__*, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %2, align 8
  %9 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 11
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_32__* %11, %struct.TYPE_32__** %4, align 8
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %14, i32 0, i32 2
  store %struct.TYPE_30__* %15, %struct.TYPE_30__** %3, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 10
  store i32* null, i32** %17, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 9
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 8
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_34__*, %struct.TYPE_34__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MEPF_ROWSTART, align 4
  %38 = load i32, i32* @MEPF_ROWEND, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %1
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 7
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MEPF_ROWEND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %58 = load i32, i32* @diCell, align 4
  %59 = call %struct.TYPE_37__* @ME_FindItemBack(%struct.TYPE_32__* %57, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 0
  store %struct.TYPE_33__* %61, %struct.TYPE_33__** %5, align 8
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %42
  br label %179

65:                                               ; preds = %1
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_39__*, %struct.TYPE_39__** %69, align 8
  %71 = icmp ne %struct.TYPE_39__* %70, null
  br i1 %71, label %72, label %151

72:                                               ; preds = %65
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_39__*, %struct.TYPE_39__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 0
  store %struct.TYPE_33__* %79, %struct.TYPE_33__** %6, align 8
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %7, align 4
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_44__*, %struct.TYPE_44__** %84, align 8
  %86 = icmp ne %struct.TYPE_44__* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %72
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_44__*, %struct.TYPE_44__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %87, %72
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_44__*, %struct.TYPE_44__** %101, align 8
  %103 = icmp ne %struct.TYPE_44__* %102, null
  br i1 %103, label %115, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %106 = call %struct.TYPE_36__* @ME_GetTableRowEnd(%struct.TYPE_32__* %105)
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %104, %99
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ME_twips2pointsX(%struct.TYPE_34__* %118, i32 %119)
  %121 = call i64 @max(i32 %120, i32 0)
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %115
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  br label %139

135:                                              ; preds = %115
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i64 [ %134, %131 ], [ %138, %135 ]
  %141 = sub nsw i64 %126, %140
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %141, %144
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 6
  store i64 %145, i64* %147, align 8
  %148 = load i8*, i8** @TRUE, align 8
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  br label %178

151:                                              ; preds = %65
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %151
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  br label %169

165:                                              ; preds = %151
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i64 [ %164, %161 ], [ %168, %165 ]
  %171 = sub nsw i64 %156, %170
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 6
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %169, %139
  br label %179

179:                                              ; preds = %178, %64
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 4
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %179
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @PFM_TABLE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %197
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @PFE_TABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %204, %197, %179
  ret void
}

declare dso_local %struct.TYPE_37__* @ME_FindItemBack(%struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_36__* @ME_GetTableRowEnd(%struct.TYPE_32__*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @ME_twips2pointsX(%struct.TYPE_34__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

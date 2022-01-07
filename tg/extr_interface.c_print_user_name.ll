; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_user_name.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_user_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@TGL_PEER_USER = common dso_local global i64 0, align 8
@COLOR_RED = common dso_local global i32 0, align 4
@permanent_peer_id_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"user#%d\00", align 1
@unknown_user_list_pos = common dso_local global i32 0, align 4
@unknown_user_list = common dso_local global i64* null, align 8
@TGLUF_SELF = common dso_local global i32 0, align 4
@TGLUF_CONTACT = common dso_local global i32 0, align 4
@COLOR_REDB = common dso_local global i32 0, align 4
@TGLUF_DELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"deleted user#%d\00", align 1
@TGLUF_CREATED = common dso_local global i32 0, align 4
@use_ids = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_user_name(%struct.in_ev* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.in_ev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.in_ev* %0, %struct.in_ev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @tgl_get_peer_type(i32 %9)
  %11 = load i64, i64* @TGL_PEER_USER, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %16 = load i32, i32* @COLOR_RED, align 4
  %17 = call i32 @mpush_color(%struct.in_ev* %15, i32 %16)
  %18 = load i64, i64* @permanent_peer_id_mode, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @print_peer_permanent_name(%struct.in_ev* %21, i32 %22)
  %24 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %25 = call i32 @mpop_color(%struct.in_ev* %24)
  br label %187

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %68, label %29

29:                                               ; preds = %26
  %30 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @tgl_get_peer_id(i32 %31)
  %33 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %32)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %49, %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @unknown_user_list_pos, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64*, i64** @unknown_user_list, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @tgl_get_peer_id(i32 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %52

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %34

52:                                               ; preds = %47, %34
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* @unknown_user_list_pos, align 4
  %57 = icmp slt i32 %56, 1000
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @tgl_get_peer_id(i32 %60)
  %62 = load i64*, i64** @unknown_user_list, align 8
  %63 = load i32, i32* @unknown_user_list_pos, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @unknown_user_list_pos, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  store i64 %61, i64* %66, align 8
  br label %67

67:                                               ; preds = %55, %52
  br label %184

68:                                               ; preds = %26
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @TGLUF_SELF, align 4
  %73 = load i32, i32* @TGLUF_CONTACT, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %79 = load i32, i32* @COLOR_REDB, align 4
  %80 = call i32 @mpush_color(%struct.in_ev* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TGLUF_DELETED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @tgl_get_peer_id(i32 %90)
  %92 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  br label %171

93:                                               ; preds = %81
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TGLUF_CREATED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @tgl_get_peer_id(i32 %102)
  %104 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %103)
  br label %170

105:                                              ; preds = %93
  %106 = load i64, i64* @use_ids, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @tgl_get_peer_id(i32 %110)
  %112 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %111)
  br label %169

113:                                              ; preds = %105
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strlen(i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %132)
  br label %168

134:                                              ; preds = %119
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @strlen(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %140, %134
  %148 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %153)
  br label %167

155:                                              ; preds = %140
  %156 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.in_ev*, i8*, i64, ...) @mprintf(%struct.in_ev* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %161, i32 %165)
  br label %167

167:                                              ; preds = %155, %147
  br label %168

168:                                              ; preds = %167, %126
  br label %169

169:                                              ; preds = %168, %108
  br label %170

170:                                              ; preds = %169, %100
  br label %171

171:                                              ; preds = %170, %88
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @TGLUF_SELF, align 4
  %176 = load i32, i32* @TGLUF_CONTACT, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %182 = call i32 @mpop_color(%struct.in_ev* %181)
  br label %183

183:                                              ; preds = %180, %171
  br label %184

184:                                              ; preds = %183, %67
  %185 = load %struct.in_ev*, %struct.in_ev** %4, align 8
  %186 = call i32 @mpop_color(%struct.in_ev* %185)
  br label %187

187:                                              ; preds = %184, %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tgl_get_peer_type(i32) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @print_peer_permanent_name(%struct.in_ev*, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, i64, ...) #1

declare dso_local i64 @tgl_get_peer_id(i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

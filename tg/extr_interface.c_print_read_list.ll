; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_print_read_list.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_print_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ev = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tgl_message = type { i32, i32, i32 }

@notify_ev = common dso_local global %struct.in_ev* null, align 8
@enable_json = common dso_local global i64 0, align 8
@TLS = common dso_local global %struct.TYPE_3__* null, align 8
@TGLMF_OUT = common dso_local global i32 0, align 4
@COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"User \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Chat \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Secret chat \00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c" marked read %d outbox and %d inbox messages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_read_list(i32 %0, %struct.tgl_message** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tgl_message**, align 8
  %5 = alloca %struct.in_ev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tgl_message** %1, %struct.tgl_message*** %4, align 8
  %12 = load %struct.in_ev*, %struct.in_ev** @notify_ev, align 8
  store %struct.in_ev* %12, %struct.in_ev** %5, align 8
  %13 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %14 = call i32 @mprint_start(%struct.in_ev* %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %186, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %189

19:                                               ; preds = %15
  %20 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %20, i64 %22
  %24 = load %struct.tgl_message*, %struct.tgl_message** %23, align 8
  %25 = icmp ne %struct.tgl_message* %24, null
  br i1 %25, label %26, label %185

26:                                               ; preds = %19
  %27 = load i64, i64* @enable_json, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %31, i64 %33
  %35 = load %struct.tgl_message*, %struct.tgl_message** %34, align 8
  %36 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tgl_cmp_peer_id(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %44, i64 %46
  %48 = load %struct.tgl_message*, %struct.tgl_message** %47, align 8
  %49 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %59

51:                                               ; preds = %30
  %52 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %52, i64 %54
  %56 = load %struct.tgl_message*, %struct.tgl_message** %55, align 8
  %57 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %51, %43
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %130, %59
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %133

65:                                               ; preds = %61
  %66 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %66, i64 %68
  %70 = load %struct.tgl_message*, %struct.tgl_message** %69, align 8
  %71 = icmp ne %struct.tgl_message* %70, null
  br i1 %71, label %72, label %129

72:                                               ; preds = %65
  %73 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %73, i64 %75
  %77 = load %struct.tgl_message*, %struct.tgl_message** %76, align 8
  %78 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @tgl_cmp_peer_id(i32 %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %72
  %86 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %86, i64 %88
  %90 = load %struct.tgl_message*, %struct.tgl_message** %89, align 8
  %91 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %101

93:                                               ; preds = %72
  %94 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %94, i64 %96
  %98 = load %struct.tgl_message*, %struct.tgl_message** %97, align 8
  %99 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %93, %85
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @tgl_cmp_peer_id(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %101
  %107 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %107, i64 %109
  %111 = load %struct.tgl_message*, %struct.tgl_message** %110, align 8
  %112 = getelementptr inbounds %struct.tgl_message, %struct.tgl_message* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TGLMF_OUT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %106
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %123

120:                                              ; preds = %106
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.tgl_message**, %struct.tgl_message*** %4, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.tgl_message*, %struct.tgl_message** %124, i64 %126
  store %struct.tgl_message* null, %struct.tgl_message** %127, align 8
  br label %128

128:                                              ; preds = %123, %101
  br label %129

129:                                              ; preds = %128, %65
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %61

133:                                              ; preds = %61
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %134, %135
  %137 = icmp sgt i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i64, i64* @enable_json, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %184, label %142

142:                                              ; preds = %133
  %143 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %144 = load i32, i32* @COLOR_YELLOW, align 4
  %145 = call i32 @mpush_color(%struct.in_ev* %143, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @tgl_get_peer_type(i32 %146)
  switch i32 %147, label %175 [
    i32 128, label %148
    i32 130, label %157
    i32 129, label %166
  ]

148:                                              ; preds = %142
  %149 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %150 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %151 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @tgl_peer_get(%struct.TYPE_3__* %153, i32 %154)
  %156 = call i32 @print_user_name(%struct.in_ev* %151, i32 %152, i32 %155)
  br label %177

157:                                              ; preds = %142
  %158 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %159 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %160 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @tgl_peer_get(%struct.TYPE_3__* %162, i32 %163)
  %165 = call i32 @print_chat_name(%struct.in_ev* %160, i32 %161, i32 %164)
  br label %177

166:                                              ; preds = %142
  %167 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %168 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @tgl_peer_get(%struct.TYPE_3__* %171, i32 %172)
  %174 = call i32 @print_encr_chat_name(%struct.in_ev* %169, i32 %170, i32 %173)
  br label %177

175:                                              ; preds = %142
  %176 = call i32 @assert(i32 0)
  br label %177

177:                                              ; preds = %175, %166, %157, %148
  %178 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (%struct.in_ev*, i8*, ...) @mprintf(%struct.in_ev* %178, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %183 = call i32 @mpop_color(%struct.in_ev* %182)
  br label %184

184:                                              ; preds = %177, %133
  br label %185

185:                                              ; preds = %184, %19
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  br label %15

189:                                              ; preds = %15
  %190 = load %struct.in_ev*, %struct.in_ev** %5, align 8
  %191 = call i32 @mprint_end(%struct.in_ev* %190)
  ret void
}

declare dso_local i32 @mprint_start(%struct.in_ev*) #1

declare dso_local i32 @tgl_cmp_peer_id(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mpush_color(%struct.in_ev*, i32) #1

declare dso_local i32 @tgl_get_peer_type(i32) #1

declare dso_local i32 @mprintf(%struct.in_ev*, i8*, ...) #1

declare dso_local i32 @print_user_name(%struct.in_ev*, i32, i32) #1

declare dso_local i32 @tgl_peer_get(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @print_chat_name(%struct.in_ev*, i32, i32) #1

declare dso_local i32 @print_encr_chat_name(%struct.in_ev*, i32, i32) #1

declare dso_local i32 @mpop_color(%struct.in_ev*) #1

declare dso_local i32 @mprint_end(%struct.in_ev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
